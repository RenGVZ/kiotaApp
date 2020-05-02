class AddNearbyParkToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :nearby_park, :boolean
  end
end
