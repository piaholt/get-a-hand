class UsersController < ApplicationController
  def show
    @user = current_user
  end
  def edit
    @user = current_user
  end
  def update
    @user = current_user
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.required(:user).permit(:username, :first_name, :last_name, :location, :email)
  end
end
