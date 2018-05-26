class CityController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @postal_code = params[:city][:postal_code]
    @name = params[:city][:name]

    city = City.new(postal_code: @postal_code, name: @name)

    if city.save
        redirect_to(licence_index_url)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
