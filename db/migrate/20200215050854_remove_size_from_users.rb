class RemoveSizeFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :size, :string
  end
end
