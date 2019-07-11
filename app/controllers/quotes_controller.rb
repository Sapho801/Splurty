class QuotesController < ApplicationController
    def index
      @quote = Quote.order("RANDOM()").first 
      #something is wrong her. Quote is italicized. Even when you modify it to say something absurd, it still pulls up Einstein quote
    end

    def new
      @quote = Quote.new
    end

    def create 
      @quote = Quote.create(quote_params) 
      if @quote.invalid?
        flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
      end
      redirect_to root_path
    end

    def about
    end

    private

    def quote_params
      params.require(:quote).permit(:saying, :author)
    end
end
