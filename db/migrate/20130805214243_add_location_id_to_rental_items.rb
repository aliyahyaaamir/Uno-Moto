class AddLocationIdToRentalItems < ActiveRecord::Migration
  def change
  	add_column :rental_items, :location_id, :integer
  end
end
