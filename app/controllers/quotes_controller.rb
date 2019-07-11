class QuotesController < ApplicationController
    def index
      @quote = Quote.order("RANDOM()").first 
      #something is wrong her. Quote is italicized. Even when you modify it to say something absurd, it still pulls up Einstein quote
    end

    def new
      @quote = Quote.new
    end

    def create 
      Quote.create(quote_params) 
      redirect_to root_path
    end

    private

    def quote_params
      params.require(:quote).permit(:saying, :author)
    end
end
