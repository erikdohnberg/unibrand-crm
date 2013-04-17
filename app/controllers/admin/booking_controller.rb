class Admin::BookingController < ApplicationController

	def index
		@booking = Booking.new
	end

	def edit
		@booking = Booking.find(params[:id])
	end

	def create
	  	@booking = Booking.new(params[:booking])
	  	if @booking.save
	  		redirect_to user_booking_index_path
	  	end
	end

	def destroy
	  	@booking.destroy
	    redirect_to [:admin, :booking], notice: "Booking deleted"
	end
end
