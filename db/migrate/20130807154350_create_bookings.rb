class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.time :time
      t.date :date
      t.integer :user_id
      t.integer :rental_item_id

      t.timestamps
    end
  end
end
