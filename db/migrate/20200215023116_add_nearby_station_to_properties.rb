class AddNearbyStationToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :nearby_station, :boolean
  end
end
