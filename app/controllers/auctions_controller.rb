class AuctionsController < ApplicationController
    before_action :authenticate_user!, except: [:details]

    def index
        auctions = current_user.auctions
        respond_to do |format|
            format.html {render :index, locals: {auctions: auctions}}
        end
    end

    def details
        auction = Auction.find(params[:id])
        bids = auction.bids
        respond_to do |format|
            format.html {render :details, locals: {auction: auction, bids: bids}}
        end
    end
end
