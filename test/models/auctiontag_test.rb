# == Schema Information
#
# Table name: auctiontags
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  auction_id :bigint
#  tag_id     :bigint
#
# Indexes
#
#  index_auctiontags_on_auction_id  (auction_id)
#  index_auctiontags_on_tag_id      (tag_id)
#
# Foreign Keys
#
#  fk_rails_...  (auction_id => auctions.id)
#  fk_rails_...  (tag_id => tags.id)
#
require 'test_helper'

class AuctiontagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
