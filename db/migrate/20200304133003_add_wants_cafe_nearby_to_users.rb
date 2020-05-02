class AddWantsCafeNearbyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wants_cafe_nearby, :boolean
  end
end
