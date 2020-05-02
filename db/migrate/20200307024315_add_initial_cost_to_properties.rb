class AddInitialCostToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :initial_cost, :integer
  end
end
