# == Schema Information
#
# Table name: review_tags
#
#  id          :integer          not null, primary key
#  engineer_id :integer
#  tag_id      :integer
#  review_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_review_tags_on_engineer_id  (engineer_id)
#  index_review_tags_on_review_id    (review_id)
#  index_review_tags_on_tag_id       (tag_id)
#
# Foreign Keys
#
#  fk_rails_...  (engineer_id => engineers.id)
#  fk_rails_...  (review_id => reviews.id)
#  fk_rails_...  (tag_id => tags.id)
#

class ReviewTag < ApplicationRecord
end
