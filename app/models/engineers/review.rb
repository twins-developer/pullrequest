# == Schema Information
#
# Table name: engineers_reviews
#
#  id          :integer          not null, primary key
#  engineer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Engineers::Review < ApplicationRecord
end
