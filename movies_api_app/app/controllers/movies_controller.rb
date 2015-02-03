class MoviesController < ApplicationController
  respond_to :json

  def index
    respond_with Movie.all
  end

  def show
    respond_with Movie.find(params[:id])
  end

  def update
    respond_with Movie.update(params[:id], movie_params)
  end

  def create
    respond_with Movie.create(movie_params)
  end

  private
    def movie_params
      params.require(:movie).permit(:name)
    end
end
