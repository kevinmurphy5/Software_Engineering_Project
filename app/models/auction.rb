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
class Auction < ApplicationRecord
    belongs_to :user
    has_many :auctiontags, dependent: :destroy
    has_many :bids, dependent: :destroy
    has_many :reviews, dependent: :destroy

    validates :item_name, :start_price, :win_price, :auction_ends, :auction_open_status, presence: true
end
