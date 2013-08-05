class AddImageToRentalItems < ActiveRecord::Migration
  def change
    add_column :rental_items, :image, :string
  end
end
