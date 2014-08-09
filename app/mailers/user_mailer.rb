class UserMailer < ActionMailer::Base
  default from: "notifications@boostenglish.com"
  
  def welcome_email(user)
	@user = user(params[:email])
	@url = "http://www.boostenglish.com/profile"
	mail(:to => @user.email, :subject => "Welcome to Boost English")
	end
end
