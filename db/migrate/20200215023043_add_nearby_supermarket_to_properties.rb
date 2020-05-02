class AddNearbySupermarketToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :nearby_supermarket, :boolean
  end
end
