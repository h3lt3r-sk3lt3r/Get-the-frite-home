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
    @booking.status = "pending"
    if @booking.save
      redirect_to mystalls_path
    else
      render :new
    end
  end

  def accepted
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    redirect_to mystalls_path
  end

  def declined
    @booking = Booking.find(params[:id])
    @booking.status = "declined"
    @booking.save
    redirect_to mystalls_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
