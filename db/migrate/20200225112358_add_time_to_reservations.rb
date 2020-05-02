class AddTimeToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :Product, :string
  end
end
