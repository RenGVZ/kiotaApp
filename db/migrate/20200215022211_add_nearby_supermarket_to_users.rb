class AddNearbySupermarketToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nearby_supermarket, :boolean
  end
end
