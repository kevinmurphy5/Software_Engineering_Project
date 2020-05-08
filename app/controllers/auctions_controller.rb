class AuctionsController < ApplicationController
    before_action :authenticate_user!

    def index
        auctions = current_user.auctions
        respond_to do |format|
            format.html {render :index, locals: {auctions: auctions}}
        end
    end
end
