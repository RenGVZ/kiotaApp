class AddDesiredLocationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :desired_location, :string
  end
end
