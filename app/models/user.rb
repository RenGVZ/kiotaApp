class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Landlord
  has_many :owned_properties, class_name: 'Property'

  # Renter
  has_many :property_viewings
  has_many :properties, through: :property_viewings

  def feed_properties

    to_be_seen_properties
      .where('location = ?', work_location)
      .or(to_be_seen_properties.where('location = ?', partylocation)) 
      .where('price <= ?', max_price)
      .where('size >= ?', size_desired)
      # .where('')
  end

  def to_be_seen_properties
    Property.joins(<<~SQL
      LEFT JOIN property_viewings
        on properties.id = property_viewings.property_id
        and property_viewings.user_id = #{id}
    SQL
    ).where('property_viewings.id IS NULL')
  end

  def applied_reservations
    PropertyViewing.where(status: "applied", user: self)
  end

  def confirmed_reservations
    PropertyViewing.where(status: "confirmed", user: self)
  end


  def profile_complete?
    false
  end

end
