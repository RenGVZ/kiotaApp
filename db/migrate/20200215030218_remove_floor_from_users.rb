class RemoveFloorFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :floor, :integer
  end
end
