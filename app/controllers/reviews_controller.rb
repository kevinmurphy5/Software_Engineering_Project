class ReviewsController < ApplicationController

    def index
        reviews = current_user.reviews
        respond_to do |format|
            format.html {render :index, locals: {reviews: reviews}}
        end
    end

    def details
        auction = Auction.find(params[:id])
        reviews = auction.reviews
        respond_to do |format|
            format.html {render :details, locals: {auction: auction, reviews: reviews}}
        end
    end

    
end
