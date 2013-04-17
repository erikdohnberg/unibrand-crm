class BookingsController < ApplicationController
	before_filter :require_login, :except => :create
	def index
		@bookings = current_user.bookings
	end

	def edit
		@booking = Booking.find(params[:id])
	end

	def create
		@booking = current_user.bookings.build(params[:booking])
		if @booking.save
			redirect_to user_booking_index_path
		end
	end

	def destroy
		@booking = Booking.find(params[:id])
		@booking.destroy
		redirect_to [:booking], notice: "Booking deleted"
	end
end
