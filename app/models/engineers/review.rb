# == Schema Information
#
# Table name: engineers_reviews
#
#  id          :integer          not null, primary key
#  engineer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_engineers_reviews_on_engineer_id  (engineer_id)
#
# Foreign Keys
#
#  fk_rails_...  (engineer_id => engineers.id)
#

class Engineers::Review < ApplicationRecord
end
