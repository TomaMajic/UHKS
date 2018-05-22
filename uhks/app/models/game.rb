class Game < ApplicationRecord
	belongs_to :city
	belongs_to :minimal_licence, :class_name => 'Licence'
	belongs_to :home_team, :class_name => 'Team'
	belongs_to :away_team, :class_name => 'Team'
	has_one :user_game
	has_many :users, through: :user_games
end
