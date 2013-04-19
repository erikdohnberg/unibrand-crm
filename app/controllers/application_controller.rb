class ApplicationController < ActionController::Base
	protect_from_forgery

	helper_method :current_user

  def not_authenticated
    redirect_to login_url, :alert => "First login to access this page."
  end
  
	private

  # Unneccessary because sorcery has current_user as part of it.
	# def current_user
	  # @current_user || @current_user = User.find(session[:user_id]) if session[:user_id]
	# end
end
