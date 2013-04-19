class UserMailer < ActionMailer::Base
  default from: "no-reply@universitymovers.com"

  def new_booking(booking)
    @user = user.booking

    mail(:to => user.email, :subject => "Thanks for booking with University Movers!")
  end
  
end