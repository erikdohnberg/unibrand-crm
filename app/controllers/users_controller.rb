class UsersController < ApplicationController
	def new
    	@user = User.new
  	end

  	def create
    	@user = User.new(params[:user])
	    if @user.save
        UserMailer.new_user(@user).deliver
	    	redirect_to :root, :notice => "Signed up!"
	    else
	      render :new
	    end
  	end
end
