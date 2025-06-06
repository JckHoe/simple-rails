class Api::V1::SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      login(user)
      render json: { message: "Logged in successfully" }
    else
      render json: { error: "Invalid email or password" }, status: :unauthorized
    end
  end

  def destroy
    logout
    render json: { message: "Logged out successfully" }
  end
end
