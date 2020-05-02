class RemoveDistanceToSupermarketFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :distance_to_supermarket, :integer
  end
end
