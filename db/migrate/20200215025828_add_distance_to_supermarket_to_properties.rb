class AddDistanceToSupermarketToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :distance_to_supermarket, :integer
  end
end
