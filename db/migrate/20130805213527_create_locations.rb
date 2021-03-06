class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :city
      t.string :zipcode
      t.string :country

      t.timestamps
    end
  end
end
