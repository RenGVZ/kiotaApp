class AddMaxPriceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :max_price, :integer
  end
end
