class Customer < ActiveRecord::Base
	has_many :products
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :gender, presence: true
	validates :email, presence: true
end
