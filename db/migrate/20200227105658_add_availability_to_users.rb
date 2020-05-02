class AddAvailabilityToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :availability, :jsonb
    remove_column :reservations, :meeting_date
    remove_column :reservations, :Product
  end
end
