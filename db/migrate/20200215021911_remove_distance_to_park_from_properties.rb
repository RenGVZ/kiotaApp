class RemoveDistanceToParkFromProperties < ActiveRecord::Migration[5.2]
  def change
    remove_column :properties, :distance_to_park, :integer
  end
end
