class DropDateColumnFromBookings < ActiveRecord::Migration
  def up
  	remove_column :bookings, :date
  end

  def down
  end
end
