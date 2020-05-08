class BidsController < ApplicationController
    before_action :authenticate_user!

    def index
        bids = current_user.bids
        auctions = Auction.all
        respond_to do |format|
            format.html {render :index, locals: {bids: bids, auctions: auctions}}
        end
    end

    def create
        bid = Bid.new(
            params.require(:bid).permit(:bid_amount, :auction_id)
        )
        bid.user_id = current_user.id

        respond_to do |format|
            format.html do
                if bid.save
                    flash[:success] = "Bid placed successfully"
                    redirect_to auction_url(Auction.find(bid.auction_id))
                else
                    flash.now[:error] = "Failed to place bid"
                end
            end
        end
    end
end
