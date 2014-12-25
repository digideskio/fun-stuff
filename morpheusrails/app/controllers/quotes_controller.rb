class QuotesController < ApplicationController
  def index
    @quotes = Quote.all.shuffle
    respond_to do |format|
      format.json {render json:@quotes}
    end
  end
end
