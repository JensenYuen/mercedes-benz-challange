class PagesController < ApplicationController
  def home
  end

  def search
    latitude = params[:latitude]
    longitude = params[:longitude]
    uri = URI("https://api.mapbox.com/geocoding/v5/mapbox.places/museum.json?types=poi&proximity=#{longitude},#{latitude}&access_token=#{ENV['MAPBOX_API']}")
    api_response = Net::HTTP.get_response(uri)
    respond_to do |format|
      format.html { render json: api_response.body }
    end
    raise
  end
end
