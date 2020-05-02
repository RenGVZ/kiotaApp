class AddDateToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :meeting_date, :date
  end
end
