class BookingsController < ApplicationController

  def new
    @user = current_user
    @lodging = Lodging.find(params[:lodging_id])
    @booking = @lodging.bookings.new
  end

  def create
    @user = current_user
    @lodging = Lodging.find(params[:lodging_id])
    @booking = @lodging.bookings.new(booking_params)
    if @booking.save
      respond_to { |format| format.js }
      flash[:notice] = "Succesfully Booked Your Room: Cost $#{@booking.bill}"
    else
      render('new')
    end
  end

private
  def booking_params
    params.require(:booking).permit(:user_id, :bill, :start_date, :end_date)
  end
end
