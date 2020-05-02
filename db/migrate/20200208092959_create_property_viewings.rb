class CreatePropertyViewings < ActiveRecord::Migration[5.2]
  def change
    create_table :property_viewings do |t|
      t.string :status
      t.string 'time_slot', array: true
      t.timestamp :confirmed_time
      t.references :user, foreign_key: true
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
