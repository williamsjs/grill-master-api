Knock::AuthTokenController.class_eval do

  private

  def auth_params
    params.permit :email, :password
  end
end