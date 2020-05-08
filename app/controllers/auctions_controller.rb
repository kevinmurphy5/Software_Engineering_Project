class AuctionsController < ApplicationController
    before_action :authenticate_user!, except: [:details]

    def index
        auctions = current_user.auctions
        respond_to do |format|
            format.html {render :index, locals: {auctions: auctions}}
        end
    end

    def details
        reviews = Review.where(auction_id: params[:id])
        auction = Auction.find(params[:id])
        bids = auction.bids
        bid = Bid.new
        respond_to do |format|
            format.html {render :details, locals: {auction: auction, bids: bids, bid: bid, reviews: reviews}}
        end
    end

    def new
        auction = Auction.new
        respond_to do |format|
            format.html {render :new, locals: {auction: auction}}
        end
    end

    def create
        auction = Auction.new(
            params.require(:auction).permit(:item_name, :item_description, :start_price, :win_price, :auction_ends)
        )
        auction.auction_open_status = true
        auction.image_path = ""
        auction.user_id = current_user.id

        respond_to do |format|
            format.html do
                if auction.save
                    flash[:success] = "Auction created successfully"
                    redirect_to auctions_url
                else
                    flash.now[:error] = "Error: Auction failed to create"
                    render :new, locals: {auction: auction}
                end
            end
        end
    end
end


