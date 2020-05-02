class AddKeyMoneyToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :key_money, :integer
  end
end
