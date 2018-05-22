class User < ApplicationRecord
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable

	has_many :absences
	has_one :licence
	has_one :city
end
