class AddKeyMoneyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :key_money, :boolean
  end
end
