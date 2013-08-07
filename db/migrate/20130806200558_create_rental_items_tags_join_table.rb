class CreateRentalItemsTagsJoinTable < ActiveRecord::Migration
 def change
	create_table :rental_items_tags, id: false do |t|
		t.integer :rental_item_id
		t.integer :tag_id
	end
 end

end
