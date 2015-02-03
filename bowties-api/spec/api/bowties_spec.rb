require 'rails_helper'

describe "Bowties API", :type => :request do
  it "returns a list of bowties" do 
    FactoryGirl.create_list(:bowtie,10)

    get "/api/bowties"

    expect(response).to have_http_status 200

    bowties=JSON.parse(response.body)
    expect(bowties.count).to eq(10)
  end

  it "returns a specific bowtie" do
      bowtie = FactoryGirl.create(:bowtie)

      get "/api/bowties/#{bowtie.id}"

      expect(response).to have_http_status 200
      expect(response.body).to eq(bowtie.to_json)
  end
end