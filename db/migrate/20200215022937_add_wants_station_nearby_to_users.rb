class AddWantsStationNearbyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wants_station_nearby, :boolean
  end
end
