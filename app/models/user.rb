class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :first_name, :last_name, :password, :password_confirmation, :email, :username
  validates :first_name, :last_name, :email,:username, :presence => true
  validates_length_of :password, :minimum => 5, :message => "password must be at least 5 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password
  validates_presence_of :password, :on => :create
  has_many :rental_items
  belongs_to :location
  has_many :locations, :through => :rental_items
  has_many :bookings


end
