class RentalItem < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :description, :user_id, :price_per_day, :price_per_week, :image, :remote_image_url
  validates :title, :description, :price_per_day, :price_per_week, :presence => true
  mount_uploader :image, ImageUploader
end
