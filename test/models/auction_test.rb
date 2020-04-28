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
#
require 'test_helper'

class AuctionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
