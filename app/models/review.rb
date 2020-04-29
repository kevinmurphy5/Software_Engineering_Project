# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  body       :string
#  rating     :float
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  auction_id :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_reviews_on_auction_id  (auction_id)
#  index_reviews_on_user_id     (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (auction_id => auctions.id)
#  fk_rails_...  (user_id => users.id)
#
class Review < ApplicationRecord
    belongs_to :user
    belongs_to :auction
end
