class RemoveDistanceToStationFromProperties < ActiveRecord::Migration[5.2]
  def change
    remove_column :properties, :distance_to_station, :integer
  end
end
