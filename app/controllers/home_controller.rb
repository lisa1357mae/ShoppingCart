class HomeController < ApplicationController

  def index
    @user = User.new
    end

def logout

	session[:company_id] = nil
	flash[:message] = "You are logged out !"
	redirect_to :root



end

  end
