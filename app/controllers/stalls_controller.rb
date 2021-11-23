class StallsController < ApplicationController
  def index
    @stalls = Stall.all
  end

  def show
    @stall = Stall.find(params[:id])
  end

  def new
    @stall = Stall.new
  end

  def create
    @stall = Stall.new(stall_params)
    if @stall.save
      redirect_to stall_path(@stall)
    else
      render :new
    end
  end

  def destroy
    @stall = Stall.find(params[:id])
    @stall.destroy
    redirect_to stalls_path
  end

  private

  def stall_params
    params.require(:stall).permit(:name, :price_per_day, :description, :menu_description)
  end
end
