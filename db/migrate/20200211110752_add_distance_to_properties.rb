class AddDistanceToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :distance_to_station, :integer
    add_column :properties, :pets, :boolean
    add_column :properties, :distance_to_supermarket, :integer
    add_column :properties, :tatami, :boolean
    add_column :properties, :age, :integer
    add_column :properties, :floor, :integer
    add_column :properties, :distance_to_park, :integer
    add_column :properties, :size, :integer
    add_column :properties, :location, :string
  end
end
