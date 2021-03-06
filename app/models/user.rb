class User < ActiveRecord::Base
  include Slugify
  extend ClassSlugify
  has_many :tweets
  validates_presence_of :username, :email, :password
  has_secure_password
end
