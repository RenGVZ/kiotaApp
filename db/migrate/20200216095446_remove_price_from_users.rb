class RemovePriceFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :price, :integer
  end
end
