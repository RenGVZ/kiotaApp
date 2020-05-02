class AddDistanceToStationToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :distance_to_station, :integer
  end
end
