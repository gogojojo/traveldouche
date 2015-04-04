class TripsController < ApplicationController
  def index
  end
  def new
    @search = Trip.new
  end
  def create
    @search = Trip.new(params.require(:trip).permit(:place))
    redirect_to search_path(:place => @search.place)
  end 
  def search
    @place = params[:place]
    
  end
end
