class Agent < ActiveRecord::Base
	has_secure_password
  has_many :listings
end