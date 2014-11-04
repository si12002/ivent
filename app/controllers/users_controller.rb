class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  	if current_user != @user
  		redirect_to current_user
  	end
  end
end
