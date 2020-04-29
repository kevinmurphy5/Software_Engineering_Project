class AddAuctionFkToAuctiontag < ActiveRecord::Migration[6.0]
  def change
    add_reference :auctiontags, :auction, foreign_key: true
  end
end
