class BookingsController < ApplicationController
	before_filter :require_login, :except => :create
	def index
		@bookings = current_user.bookings
	end

	def edit
		@booking = Booking.find(params[:id])
	end

	def create
		# @booking = current_user.bookings.build(params[:booking])
		# @booking = User.find(current_user.id).bookings.build(params[:booking])
		u = User.find(current_user.id)
		@booking = u.bookings.build(params[:booking => {"starts_at" "origin[street_address]" "origin[city]" "origin[postal_code]" "destination[street_address]" "destination[city]" "destination[postal_code]"}])
		@booking.save
		if @booking.save
			UserMailer.new_booking(@booking).deliver
			redirect_to :root
		end
	end

	def destroy
		@booking = Booking.find(params[:id])
		@booking.destroy
		redirect_to [:booking], notice: "Booking deleted"
	end
end
