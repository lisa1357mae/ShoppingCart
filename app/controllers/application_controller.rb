class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
<<<<<<< HEAD
  private
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end
=======

private
def current_user
  if session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
end
>>>>>>> 322602d6d665cf94cd226b4d5b11b40340726726


helper_method :current_user




end
