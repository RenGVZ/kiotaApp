class RemoveDistanceToStationFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :distance_to_station, :integer
  end
end
