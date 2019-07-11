class QuotesController < ApplicationController
    def index
      @quote = Quote.order("RANDOM()").first 
      #something is wrong her. Quote is italicized. Even when you modify it to say something absurd, it still pulls up Einstein quote
    end

    def new
    end
end
