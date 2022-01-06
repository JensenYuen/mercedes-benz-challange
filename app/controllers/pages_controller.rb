class PagesController < ApplicationController
  def home
  end

  def search
    if check_params(params)
      latitude = params[:latitude]
      longitude = params[:longitude]
      uri = URI("https://api.mapbox.com/geocoding/v5/mapbox.places/museum.json?types=poi&proximity=#{longitude},#{latitude}&access_token=#{ENV['MAPBOX_API']}")
      museums_hash = parse_uri(uri)
      render json: museums_hash
    else
      redirect_to root_path
    end
  end

  private

  def parse_uri(uri)
    museums_hash = {}
    api_response = Net::HTTP.get_response(uri)
    api_json = JSON.parse(api_response.body)
    if api_json['features'].present?
      museums = api_json['features']
      museums.each do |museum|
        postal_code = museum['context'][0]['text'].to_sym
        museum_name = museum['text']
        museums_hash[postal_code].present? ? museums_hash[postal_code] << museum_name : museums_hash[postal_code] = [museum_name]
      end
    end
    museums_hash
  end

  def check_params(params)
    regex = /\d+\.\d+/
    params[:longitude].match?(regex) && params[:latitude].match?(regex)
  end
end
