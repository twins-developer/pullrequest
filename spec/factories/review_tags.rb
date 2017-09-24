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

FactoryGirl.define do
  factory :review_tag do
    
  end
end
