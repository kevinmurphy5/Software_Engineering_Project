class StaticPagesController < ApplicationController
  before_action :authenticate_user!, except: [:welcome, :index]

  def welcome
    
    respond_to do |format|
      format.html {render :welcome }
    end

  end

  def index
    auctions = Auction.all
    respond_to do |format|
        format.html {render :index, locals: {auctions: auctions}}
    
    end
  end

  
end
