class SessionsController < ApplicationController

	# Get the login form
	def new
	end

	# Post new session
	def create
		@user = login(params[:email], params[:password], params[:remember_me])
		if @user
			redirect_back_or_to :root, :notice => "Logged In"
		else
			flash.now[:alert] = "Invalid email or password"
			render :new
		end
	end

	# End session
	def destroy
		logout
		redirect_to root_url, :notice => "Logged Out"
	end

end
