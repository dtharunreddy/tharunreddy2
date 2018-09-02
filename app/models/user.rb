class User < ApplicationRecord
	has_many :products
	has_many :books
	has_many :categories
end
