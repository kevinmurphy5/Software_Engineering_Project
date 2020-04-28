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
#
class Review < ApplicationRecord
end
