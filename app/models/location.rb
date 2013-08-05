class Location < ActiveRecord::Base
  attr_accessible :address, :city, :country, :latitude, :longitude, :zipcode
  has_many :rental_items
  
end
