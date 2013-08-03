class CreateRentalItems < ActiveRecord::Migration
  def change
    create_table :rental_items do |t|
      t.string	:title
      t.integer	:price_per_day
      t.integer :price_per_week
      t.references :user
      t.text :description

      t.timestamps
    end
  end
end
