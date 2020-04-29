class AuctionsController < ApplicationController

    def auction
        respond_to do |format|
            fromat.html {render :auctions}
end
