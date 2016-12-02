class User < ActiveRecord::Base
  # Remember to create a migration!
  has_secure_password

  validates_presence_of :email, :username
  validates_uniqueness_of :username, :email
end
