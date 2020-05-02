class ChangeSizeToString < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :size, :string
  end
end
