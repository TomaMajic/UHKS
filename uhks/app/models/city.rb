class City < ApplicationRecord
	has_many :teams
	has_many :games
	has_many :users
end
