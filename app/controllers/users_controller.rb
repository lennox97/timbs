class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new (user_params)

    if user.save
      session[:user_id] = user.id
      redirect_to '/welcome'
    else
      redirect_to '/signup', alert: "Invalid name/password combination"
    end

  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:firstName, :lastName, :password, :password_confirmation, :phone, :administrator, :ip, :active)
  end
end
