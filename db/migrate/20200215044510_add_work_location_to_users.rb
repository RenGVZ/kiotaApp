class AddWorkLocationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :work_location, :string
  end
end
