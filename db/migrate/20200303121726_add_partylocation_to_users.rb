class AddPartylocationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :partylocation, :string
  end
end
