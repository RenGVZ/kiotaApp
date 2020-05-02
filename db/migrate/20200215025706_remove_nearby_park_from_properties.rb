class RemoveNearbyParkFromProperties < ActiveRecord::Migration[5.2]
  def change
    remove_column :properties, :nearby_park, :boolean
  end
end
