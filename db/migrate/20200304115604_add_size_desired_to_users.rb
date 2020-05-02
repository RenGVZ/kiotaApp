class AddSizeDesiredToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :size_desired, :integer
  end
end
