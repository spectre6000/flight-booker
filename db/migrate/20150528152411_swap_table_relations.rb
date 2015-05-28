class SwapTableRelations < ActiveRecord::Migration
  def change

    remove_column :bookings, :passenger_id
    add_column :passengers, :booking_id, :integer
  end
end
