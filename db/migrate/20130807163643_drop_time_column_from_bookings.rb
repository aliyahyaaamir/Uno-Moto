class DropTimeColumnFromBookings < ActiveRecord::Migration
  def up
  	remove_column :bookings, :time
  end

  def down
  end
end
