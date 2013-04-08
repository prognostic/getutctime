class HomeController < ApplicationController
  
  require 'json'
  require 'nokogiri'
  require 'csv'
  require 'open-uri'
  
  # local weather XML format API
   def index 
    url1 = "http://api.worldweatheronline.com/premium/v1/weather.ashx?q=London&format=xml&num_of_days=5&key=w9ve379xdu8etugm7e2ftxd6"
    @data1 = Nokogiri::XML(open(url1))  
   end
   
   
   # Past weather XML format API
   def past
     url1 = "http://api.worldweatheronline.com/premium/v1/past-weather.ashx?q=London&format=xml&key=w9ve379xdu8etugm7e2ftxd6"
     @data1 = Nokogiri::XML(open(url1))
   end
   
   # Marine weather XML format API
   def marine
      url1 = "http://api.worldweatheronline.com/premium/v1/marine.ashx?q=45%2C-2&format=xml&key=w9ve379xdu8etugm7e2ftxd6"
      @data1 = Nokogiri::XML(open(url1))
   end
   
   # Time Zone XML format API
   def timezone
       url1 = "http://api.worldweatheronline.com/premium/v1/tz.ashx?q=London&format=xml&key=w9ve379xdu8etugm7e2ftxd6"
       @data1 = Nokogiri::XML(open(url1))
   end
   
   # Search XML format API
   def search
        url1 = "http://api.worldweatheronline.com/premium/v1/search.ashx?q=London&format=xml&key=w9ve379xdu8etugm7e2ftxd6"
        @data1 = Nokogiri::XML(open(url1))   
   end
   
   # local weather Json format API
   def local_json
    @json = ActiveSupport::JSON.decode(open('http://api.worldweatheronline.com/premium/v1/weather.ashx?q=London&format=json&num_of_days=5&key=w9ve379xdu8etugm7e2ftxd6').read)
   end
   
   # Past weather Json format API
   def past_json
    @json =  ActiveSupport::JSON.decode(open('http://api.worldweatheronline.com/premium/v1/past-weather.ashx?q=London&format=json&key=w9ve379xdu8etugm7e2ftxd6').read)
   end
   
   # Marine weather Json format API
   def marine_json
         @json =  ActiveSupport::JSON.decode(open('http://api.worldweatheronline.com/premium/v1/marine.ashx?q=45%2C-2&format=json&key=w9ve379xdu8etugm7e2ftxd6').read)
   end
   
   # Time Zone Json format API
   def time_json
    @json =  ActiveSupport::JSON.decode(open('http://api.worldweatheronline.com/premium/v1/tz.ashx?q=London&format=json&key=w9ve379xdu8etugm7e2ftxd6').read)
   end
   
   # Search Json format API
   def search_json
     @json =  ActiveSupport::JSON.decode(open('http://api.worldweatheronline.com/premium/v1/search.ashx?q=London&format=json&key=w9ve379xdu8etugm7e2ftxd6').read)
   end
    
    
end
