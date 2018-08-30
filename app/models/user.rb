class User < ActiveRecord::Base

	has_many :books
	has_many :products
	has_many :categories
  
end
