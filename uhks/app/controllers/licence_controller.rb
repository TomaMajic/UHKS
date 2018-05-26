class LicenceController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @name = params[:licence][:name]
    @priority = params[:licence][:priority].to_i

    licence = Licence.new(priority: @priority, name: @name)

    if licence.save
        redirect_to(city_index_url)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
