# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  code       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :skill do
  end
end
