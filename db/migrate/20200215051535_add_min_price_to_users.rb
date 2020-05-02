class AddMinPriceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :min_price, :integer
  end
end
