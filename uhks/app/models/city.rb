class City < ApplicationRecord
	belongs_to :users
	has_many :teams
end
