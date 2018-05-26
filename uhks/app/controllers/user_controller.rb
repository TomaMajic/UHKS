class UserController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @city = City.where(name: params[:user][:city]).first
    @licence = Licence.where(name: params[:user][:licence]).first
    @f_name = params[:user][:f_name]
    @l_name = params[:user][:l_name]
    @email = params[:user][:email]
    @password = params[:user][:password]

    user = User.new(city_id: @city.id, licence_id: @licence.id, first_name: @f_name, last_name: @l_name, email: @email, password: @password, isAdmin: false);

    if user.save
        redirect_to(user_index_url)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
