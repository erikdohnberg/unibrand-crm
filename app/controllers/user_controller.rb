class UserController < ApplicationController
	def new
    	@user = User.new
  	end

  	def create
    	@user = User.new(params[:user])
	    if @user.save
	    	redirect_to user_booking_index_path, :notice => "Signed up!"
	    else
	      render :new
	    end
  	end
end
