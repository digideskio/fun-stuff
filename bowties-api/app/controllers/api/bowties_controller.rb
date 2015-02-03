module API
  class BowtiesController < ApplicationController
    respond_to :json

    def index
      respond_with Bowtie.all
    end

    def show
      bowtie = Bowtie.find(params[:id])
      respond_with bowtie
    end
    
  end
end