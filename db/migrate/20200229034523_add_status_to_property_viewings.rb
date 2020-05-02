class AddStatusToPropertyViewings < ActiveRecord::Migration[5.2]
  def change
    add_column :property_viewings, :reservation_status, :string
  end
end
