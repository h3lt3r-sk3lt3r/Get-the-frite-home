class BookingsController < ApplicationController
  before_action :authenticate_user!
  def new
    @booking = Booking.new
    @stall = Stall.find(params[:stall_id])
  end

  def create
    @stall = Stall.find(params[:stall_id])
    @booking = Booking.new(booking_params)
    @booking.stall = @stall
    @booking.user = current_user

    if @booking.save
      redirect_to mystalls_path(@stall)
    else
      render :new
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
