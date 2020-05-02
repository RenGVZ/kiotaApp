class AddWantsBarNearbyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wants_bar_nearby, :boolean
  end
end
