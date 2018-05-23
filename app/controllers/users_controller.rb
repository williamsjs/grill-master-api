class UsersController < ApplicationController
  before_action :authenticate_user
  skip_before_action :authenticate_user, only: [:sign_up]

  def sign_up
    @user = User.create!(user_params)
  end

  def my_user
    render json: current_user, status: :ok
  end

  private

  def user_params
    params.permit(:email, :password)
  end

end
