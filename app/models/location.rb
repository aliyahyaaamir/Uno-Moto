class Location < ActiveRecord::Base
  attr_accessible :address, :city, :country, :latitude, :longitude, :zipcode
  has_many :rental_items
  has_many :users, :through => :rental_items

 geocoded_by :address do |obj,results|

  if geo = results.first
    obj.city    = geo.city
    obj.zipcode = geo.postal_code
    obj.country = geo.country_code
    obj.latitude = geo.latitude
  end
 end
after_validation :geocode

end
