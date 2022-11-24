class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def profile
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end


  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :location, :email)
  end
end
