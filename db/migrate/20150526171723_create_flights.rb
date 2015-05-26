class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.datetime :date
      t.integer :duration
      t.integer :origin_id
      t.integer :destination_id

      t.timestamps null: false
    end
  end
end
