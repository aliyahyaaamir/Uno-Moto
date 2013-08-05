class DropRentsAndTimeslotsTable < ActiveRecord::Migration
  def up
  	drop_table :rents
  	drop_table :timeslots
  end

  def down
  end
end
