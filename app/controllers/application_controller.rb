class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method def log_in(user)
    session[:user_id] = user.id
  end

  helper_method def logged_in?
    !session[:user_id].nil?
  end

  helper_method def current_user
    @current_user ||= User.find(session[:user_id]) if logged_in?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
