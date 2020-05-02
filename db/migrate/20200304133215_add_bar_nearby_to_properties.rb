class AddBarNearbyToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :bar_nearby, :boolean
  end
end
