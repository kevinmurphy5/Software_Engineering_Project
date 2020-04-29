# == Schema Information
#
# Table name: auctions
#
#  id                  :bigint           not null, primary key
#  auction_ends        :datetime
#  auction_open_status :boolean
#  image_path          :string
#  item_description    :string
#  item_name           :string
#  start_price         :decimal(, )
#  win_price           :decimal(, )
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_id             :bigint
#
# Indexes
#
#  index_auctions_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class AuctionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
