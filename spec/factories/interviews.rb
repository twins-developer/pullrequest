# == Schema Information
#
# Table name: interviews
#
#  id               :integer          not null, primary key
#  status           :integer          not null
#  resource_type    :string
#  resource_id      :integer
#  interview_at     :datetime
#  place            :string
#  communication_id :integer
#  means            :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryGirl.define do
  factory :interview do
    resource_type nil
    resource_id nil
    interview_at Time.zone.now
    place Faker::Address.city
    communication_id Faker::Internet.slug
    means { rand(1..2) }
  end
end
