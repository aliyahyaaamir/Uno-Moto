class RentalItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :location
  has_many :bookings
  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :tags
  attr_accessible :title, :description, :user_id, :price_per_day, :price_per_week, :image, :remote_image_url, :address, :tags_attributes
  validates :title, :description, :price_per_day, :price_per_week, :presence => true
  mount_uploader :image, ImageUploader

  def address=(address) #setter
  	self.location = Location.where(:address => address).first_or_create
  end

  def address
  	if self.location
  		return self.location.address
  	else
  		return nil
  	end
  end
end
