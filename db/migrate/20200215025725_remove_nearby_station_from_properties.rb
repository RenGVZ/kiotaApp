class RemoveNearbyStationFromProperties < ActiveRecord::Migration[5.2]
  def change
    remove_column :properties, :nearby_station, :boolean
  end
end
