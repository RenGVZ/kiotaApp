class AddPriceToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :price, :integer
  end
end
