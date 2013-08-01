class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :first_name, :last_name, :user_name, :password
  validates_presence_of :password, :on => :create
  validates :first_name, :last_name, :email, :username, :presence => true

end
