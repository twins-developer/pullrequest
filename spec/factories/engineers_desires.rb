# == Schema Information
#
# Table name: engineers_desires
#
#  id           :integer          not null, primary key
#  engineer_id  :integer
#  shift        :integer          default([]), is an Array
#  timing       :integer
#  salary       :integer
#  job_category :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_engineers_desires_on_engineer_id  (engineer_id)
#
# Foreign Keys
#
#  fk_rails_...  (engineer_id => engineers.id)
#

FactoryGirl.define do
  factory :engineers_desire, class: 'Engineers::Desire' do
    engineer nil
    shift [1, 2, 3]
    timing { rand(1..9) }
    salary { rand(1..9) }
    job_category Engineers::Desire.job_categories.keys.sample
  end
end
