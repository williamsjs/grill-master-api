class UsersController < ApplicationController
  skip_before_action :authenticate_user

  def sign_up
    @user = User.create!(user_params)
  end

  private

  def user_params
    params.permit(:email, :password)
  end

end
