class ApplicationController < ActionController::Base
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_login
    unless current_user
      flash[:error] = "You must be logged in to access this section"
      redirect_to sessions_new_path # Redirect to login page
    end
  end
end
