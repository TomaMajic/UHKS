class TeamController < ApplicationController

  def create
    @name = params[:team][:name]
    @city_id = City.where(name: params[:team][:city]).first.id

    team = Team.new(city_id: @city_id, name: @name)

    if team.save
        redirect_to(home_index_url)
    end
  end
end
