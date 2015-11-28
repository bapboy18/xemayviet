class UsersController < ApplicationController
  before_filter :configure_permitted_parameters

  def show
    @user = User.find params[:id]
  end

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "Create account successful!"
      redirect_to @user
    else
      render "new"
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
  end
end
