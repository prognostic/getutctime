class HomeController < ApplicationController

  # The following require is used to include the required libraries to work on json.
  require 'json'
  # Nokogiri is a gem required to parse the XML format into the rails application.
  require 'nokogiri'
  # Open-uri is used to open a XML/Json formatted url into the Rails Application.
  require 'open-uri'

  # Time Zone Json format API
  def index
    if params[:q]
      url = "http://api.worldweatheronline.com/premium/v1/tz.ashx?q=#{params[:q]}&format=json&key=2c46659bd90a41a0bcf132257162410"
      @json =  ActiveSupport::JSON.decode(open(url).read)
    else
    end
  end

end
