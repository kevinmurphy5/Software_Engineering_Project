class BidsController < ApplicationController
    before_action :authenticate_user!

    def index
        bids = current_user.bids
        auctions = Auction.all
        respond_to do |format|
            format.html {render :index, locals: {bids: bids, auctions: auctions}}
        end
    end
end
