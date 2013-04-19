class UserMailer < ActionMailer::Base
  default from: "no-reply@universitymovers.com"

  def new_booking(booking)
    @user = user.booking

    mail(:to => user.email, :subject => "Thanks for booking with University Movers!")
  end
  
  def new_user(user)
    @user = user

    mail(:to => user.email, :subject => "Welcome to University Movers!")
  end
end