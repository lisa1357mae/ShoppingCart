class SessionsController < ApplicationController

def new
end


def create
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to store_index_url, notice: "Login successful!"
  else
    flash.now.alert = "Invalid email or password"
  render "new"
  end
end

def destroy
  session[:user_id] = niil
  redirect_to store_index_url, notice: "Log out successful!"
end
end
