class GetEarthPorn
  require 'rubygems'
  require 'httparty'
  require 'net/http'
  require 'open-uri'

  include HTTParty

  attr_reader :picture_array

  def initialize
    @picture_array = []
  end

  def get_pics
    server_response = get("http://www.reddit.com/r/EarthPorn/.json?limit=10")['data']['children']
    server_response.each do |image|
      if image["data"]["url"].include?("jpg") || image["data"]["url"].include?("jpeg")
        @picture_array << image["data"]["url"]
      end
    end

    p @picture_array
    p "*********************"

  end

  def save_to_disk
    @picture_array.each do |image|
      file = open(image)
      file_name_to_save = image.split('/').last

      open(file_name_to_save,'w') do |file|
        open(image){|picture| file.write(picture.read)}
      end      
    end
  end


  private
    def get *args, &block
      response = self.class.get *args, &block
      raise WebserverError, response.code unless response.code == 200
      response
    end
end

e = GetEarthPorn.new
e.get_pics
e.save_to_disk