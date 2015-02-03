describe "Movies API" do 
  describe "GET / movies" do
    it "returns all the movies" do 
      FactoryGirl.create :movie, name: "LOTR"
      FactoryGirl.create :movie, name: "The Two Towers"

      get '/movies', {}, {"Accept" => "application/json"}

      expect(response.status).to eq(200)

      body = JSON.parse(response.body)

      movie_titles = body.map{|m| m["name"]}
      # p "The movie titles are #{movie_titles}"

      expect(movie_titles).to match_array(["LOTR","The Two Towers"])
    end
  end

  describe "GET /movies/:id" do
    it "returns a requested movie" do
      m = FactoryGirl.create :movie, name: "2001: A Space Odyssey"

      get "/movies/#{m.id}", {}, { "Accept" => "application/json" }

      expect(response.status).to eq 200

      body = JSON.parse(response.body)
      expect(body["name"]).to eq "2001: A Space Odyssey"
    end
  end

  describe "POST /movies" do
    it "creates a movie" do
      movie_params = {
        "movie" => {
          "name" => "Indiana Jones and the Temple of Doom"
        }
      }.to_json

      request_headers = {
        "Accept" => "application/json",
        "Content-Type" => "application/json"
      }

      post "/movies", movie_params, request_headers

      expect(response.status).to eq 201 # created
      expect(Movie.first.title).to eq "Indiana Jones and the Temple of Doom"
    end
  end
end