class AddLayoutToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :layout, :string
  end
end
