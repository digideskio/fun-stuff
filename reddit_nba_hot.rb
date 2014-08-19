require 'httparty'

module RedditBot
  class Client
    include HTTParty
    
    attr_reader :modhash, :cookies, :username

    def initialize
      self.class.base_uri "http://www.reddit.com/"
      @cookies = nil
      @modhash = nil
      @headers = {'User-Agent' => 'dono_bot, a test bot'}
      self.class.headers @headers
    end

    def login(username,passwd)
      login = post(username,passwd)
      @username = username
      @cookies = login.headers['set-cookie']
      @modhash = login['json']['data']['modhash']

      self.class.headers 'Cookie' => @cookies
      return login
    end   

    def karma
      self.class.get("/api/v1/me/karma")
    end

    def me
      self.class.get("/api/me.json")
    end

    private

      def post(username, passwd)
        options = {:body=>{:user => username, :passwd => passwd, :api_type => 'json'}}
        self.class.post("/api/login/#{username}", options)
      end

  end #end Client class
end #end RedditBot module

