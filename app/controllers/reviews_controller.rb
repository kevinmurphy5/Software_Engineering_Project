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
    
    def new
        review = Review.new
        respond_to do |format|
            format.html {render :new, locals: {review: review}}
        end
    end
    
    def create
        review = Review.new(
            params.require(:review).permit(:title, :body, :rating, :auction_id)
        )
        review.user_id = current_user.id
        
        respond_to do |format|
            format.html do
                if review.save
                    flash[:success] = "Review created successfully"
                    redirect_to reviews_url
                else
                    flash.now[:error] = "Error: review failed to create"
                    render :new, locals: {review: review}
                end
            end
        end
    end
    
end
