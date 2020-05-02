class RemoveNearbySupermarketFromProperties < ActiveRecord::Migration[5.2]
  def change
    remove_column :properties, :nearby_supermarket, :boolean
  end
end
