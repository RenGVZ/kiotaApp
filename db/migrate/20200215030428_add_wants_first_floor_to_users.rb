class AddWantsFirstFloorToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :wants_first_floor, :boolean
  end
end
