class User < ApplicationRecord
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable

	has_many :absences
	belongs_to :licence
	belongs_to :city
	has_one :user_game
	has_many :games, through: :user_games
end
