class AddPriceToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :price, :integer
    add_column :users, :distance_to_station, :integer
    add_column :users, :pets, :boolean
    add_column :users, :distance_to_supermarket, :integer
    add_column :users, :tatami, :boolean
    add_column :users, :floor, :integer
    add_column :users, :distance_to_park, :integer
    add_column :users, :age, :integer
    add_column :users, :size, :integer
    add_column :users, :location, :string
  end
end
