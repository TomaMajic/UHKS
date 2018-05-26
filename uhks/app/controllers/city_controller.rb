class CityController < ApplicationController

  def create
    @postal_code = params[:city][:postal_code]
    @name = params[:city][:name]

    city = City.new(postal_code: @postal_code, name: @name)

    if city.save
        redirect_to(home_index_url)
    end
  end
end
