class AddInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :registration_card_number, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :dob, :date
    add_column :users, :address, :string
    add_column :users, :start_date, :date
    add_column :users, :phone_number, :string
    add_column :users, :salary, :integer
    add_column :users, :employer_name, :string
  end
end
