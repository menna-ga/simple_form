class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
    @user.build_address
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_url
    else
      render 'new'
    end
  end

  private
  
  def user_params
       params.require(:user).permit(
	 :name, :email_address,
         address_attributes: [:street_address, :city, :province, :postal_code]
       )
  end

end
