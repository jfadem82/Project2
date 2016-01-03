class Customer < ActiveRecord::Base
	has_secure_password
	validates :email, presence: true, uniqueness: true
	has_many :products, dependent: :destroy
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :gender, presence: true
	validates :email, presence: true
end
