# == Schema Information
#
# Table name: tools
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  code       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :tool do
  end
end
