class AddDepositToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :deposit, :integer
    add_column :properties, :layout, :string
  end
end
