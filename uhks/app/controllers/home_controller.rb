class HomeController < ApplicationController
	# before_action :authenticate_user!

	def index
		@user_name = current_user.first_name
		@games = Game.where("event_time > ?", Time.now)
	end
end
