class RemoveNearbySupermarketFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :nearby_supermarket, :boolean
  end
end
