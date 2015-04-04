class TripsController < ApplicationController
  require 'open-uri'
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
    page = Nokogiri::HTML(open("http://www.lonelyplanet.com/usa/#{@place}/sights"))
    @sights = page.css('h1.card__content__title.js-prerender-title') 
    
  end
end
