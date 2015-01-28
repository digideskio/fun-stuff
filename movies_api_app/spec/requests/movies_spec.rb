describe "Movies API" do 
  describe "GET / movies" do
    it "returns all the movies" do 
      FactoryGirl.create :movie, name: "LOTR"
      FactoryGirl.create :movie, name: "The Two Towers"

      get '/movies', {}, {"Accept" => "application/json"}

      expect(response.status).to eq(200)

      body = JSON.parse(response.body)
      movie_titles = body.map{|m| m["title"]}

      expect(movie_titles).to match_array(["LOTR","The Two Towers"])
    end
  end
end