# == Schema Information
#
# Table name: bids
#
#  id         :bigint           not null, primary key
#  bid_amount :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  auction_id :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_bids_on_auction_id  (auction_id)
#  index_bids_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (auction_id => auctions.id)
#  fk_rails_...  (user_id => users.id)
#
class Bid < ApplicationRecord
    belongs_to :user
    belongs_to :auction

    validates :bid_amount, :auction_id, :user_id, presence: true

    # validate :higher_than_other_bids

    # def higher_than_other_bids
    #     return Bid.where(auction_id: self.auction_id).where("bid_amount >= ?", :self.bid_amount).nil ? true : false
    # end
end
