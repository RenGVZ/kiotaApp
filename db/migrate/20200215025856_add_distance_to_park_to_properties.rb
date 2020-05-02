class AddDistanceToParkToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :distance_to_park, :integer
  end
end
