class AddAddressToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :address, :text
  end
end
