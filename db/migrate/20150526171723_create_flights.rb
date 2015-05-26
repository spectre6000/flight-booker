class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.datetime :date
      t.integer :duraiton
      t.integer :origin
      t.integer :destination

      t.timestamps null: false
    end
  end
end
