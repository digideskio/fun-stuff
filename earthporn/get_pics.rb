#write code to get JSON from r/earthporn -- DONE!!!
#determine what stream i want (new/popular?)
##get the link info from each entry  -- HALFWAY DONE!!!
#download and save the image from each link

class GetEarthPorn
  require 'rubygems'
  require 'httparty'
  require 'net/http'
  require 'open-uri'

  include HTTParty

  attr_reader :link, :picture_array

  def initialize
    @picture_array = []
  end

  def get_pics
    # picture array = []
    # 10.times do 

    # end
    server_response = get("http://www.reddit.com/r/EarthPorn/new/.json?limit=2")['data']['children']
    # p server_response.class
    # p server_response.length
    server_response.each do |image|
      @picture_array << image["data"]["url"]
    end

    p @picture_array
    p "*********************"
    #['data']['children'][0]["data"]["url"] navigating down to link
    # p @link
  end

  def save_to_disk
    # open(@link) do |image|
    #   p image.base_uri
    #   p image.content_type
    #   p image.charset
    #   p image.content_encoding
    #   p image.last_modified
    # end
    @picture_array.each do |image|
      file = open(image)
      file_name_to_save = image.split('/').last

      open(file_name_to_save,'w') do |file|
        open(image){|picture| file.write(picture.read)}
      end      
    end

    # file = open(@link)
    # p file
    # file_name_to_save = @link.split('/').last

    # open(file_name_to_save,'w') do |file|
    #   open(@link){|image| file.write(image.read)}
    # end
  end


  private
    def get *args, &block
      response = self.class.get *args, &block
      raise WebserverError, response.code unless response.code == 200
      response
    end



###HOW TO SAVE FILE FROM URL TO DISK???
end

e = GetEarthPorn.new
e.get_pics
e.save_to_disk


###THIS WORKS FOR THE MOST PART, BUT NEED TO EXCLUDE THE FLICKR DOMAIN