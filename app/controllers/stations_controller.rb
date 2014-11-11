class StationsController < ApplicationController
  def new
    @station = Station.new
  end

  def create
    @station = Station.create params.require(:station).permit(:name)
    redirect_to @station
  end

  def show
    @station = Station.find params[:id]
  end
end
