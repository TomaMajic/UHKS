class LicenceController < ApplicationController

  def create
    @name = params[:licence][:name]
    @priority = params[:licence][:priority].to_i

    licence = Licence.new(priority: @priority, name: @name)

    if licence.save
        redirect_to(home_index_url)
    end
  end
end
