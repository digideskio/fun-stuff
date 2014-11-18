#write code to get JSON from r/earthporn -- DONE!!!
#determine what stream i want (new/popular?)
##get the link info from each entry  -- HALFWAY DONE!!!
#download and save the image from each link

class GetEarthPorn
  require 'rubygems'
  require 'httparty'
  require 'net/http'

  include HTTParty

  def get_pics
    @link = get("http://www.reddit.com/r/EarthPorn/new/.json?limit=1")['data']['children'][0]["data"]["url"]
    p @link
  end

  def save_to_disk

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




