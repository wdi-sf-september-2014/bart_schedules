class StationsController < ApplicationController
  def new
    @station = Station.new
  end

  def create
    # see http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
    @station = Station.create params.require(:station).permit(:name)
    redirect_to @station
  end

  def show
    # see http://guides.rubyonrails.org/active_record_querying.html#retrieving-a-single-object
    @station = Station.find params[:id]
  end
end
