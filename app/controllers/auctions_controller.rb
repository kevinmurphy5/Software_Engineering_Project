class AuctionsController < ApplicationController

    def auciton
        respond_to do |format|
            fromat.html {render :auctions}
end
