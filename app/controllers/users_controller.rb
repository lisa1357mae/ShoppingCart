class UsersController < ApplicationController



def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    redirect_to store_index_url,
    notice: "Wecome to the site!"
  else
    render "new"

  end
end

private

def user_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
end
end
