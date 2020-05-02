class Property < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :property_viewings
  # belongs_to :reservation
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end


def my_match (a_user)
  Property.where(Property.pets = User.pets)
end
