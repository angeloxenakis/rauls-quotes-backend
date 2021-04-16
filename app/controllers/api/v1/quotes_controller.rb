class Api::V1::QuotesController < ApplicationController
    def index
        quotes = Quote.all
        render json: quotes
    end

    def create
        quote = Quote.create({content: params[:content]})
        render json: quote
    end
end
