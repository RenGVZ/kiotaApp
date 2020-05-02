class AddWantsParkNearbyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wants_park_nearby, :boolean
  end
end
