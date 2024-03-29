class StallsController < ApplicationController
  before_action :authenticate_user!
  def index
    if params[:query].present?
      @stalls = Stall.near(params[:query], 20)
    else
      @stalls = Stall.all
    end

    @markers = []
    @stalls.each do |stall|
      if stall.geocoded?
        @markers<<{lat:stall.latitude,lng:stall.longitude}
      end
    end
  end

  def show
    @stall = Stall.find(params[:id])
    @booking = Booking.new
  end

  def new
    @stall = Stall.new
  end

  def create
    @stall = Stall.new(stall_params)
    @stall.user = current_user
    if @stall.save
      redirect_to mystalls_path(@stall)
    else
      render :new
    end
  end

  def edit
    @stall = Stall.find(params[:id])
  end

  def update
    @stall = Stall.find(params[:id])
    if @stall.update(stall_params)
      redirect_to mystalls_path
      # quand elle sera fait, redirection vers la page de profil
    else
      render :edit
    end
  end

  def destroy
    @stall = Stall.find(params[:id])
    @stall.destroy
    redirect_to mystalls_path
  end

  def mystalls
    @stalls = Stall.where(user: current_user)
  end

  private

  def stall_params
    params.require(:stall).permit(:name, :price_per_day, :description, :menu_description, :address, :photo)
  end
end
