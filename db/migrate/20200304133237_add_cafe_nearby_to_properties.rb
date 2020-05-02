class AddCafeNearbyToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :cafe_nearby, :boolean
  end
end
