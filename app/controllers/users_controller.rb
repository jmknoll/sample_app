class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
	@user = User.new
  end
  
  def create
	@user = User.new(params[:user])
	if @user.save
		UserMailer.welcome_email(@user).deliver
		sign_in @user
	    flash[:success] = "Thanks for signing up and welcome to Boost English!"
		redirect_to sample_path
    else
      render 'new'
	end
end
end
  