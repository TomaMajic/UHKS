class HomeController < ApplicationController
	before_action :authenticate_user!

	def index
		@user_name = current_user.first_name
		@user_games = UserGame.where(id: current_user.id)
	end
end
