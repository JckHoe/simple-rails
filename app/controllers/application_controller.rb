class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception  # CSRF protection enabled

  # Make sure cookies are available in controllers
  include ActionController::Cookies

  # You can add helper methods for login/logout
  def login(user)
    session[:user_id] = user.id
  end

  def logout
    session.delete(:user_id)
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
