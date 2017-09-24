# == Schema Information
#
# Table name: scouts
#
#  id             :integer          not null, primary key
#  engineer_id    :integer
#  company_id     :integer
#  interviewed_on :date
#  start_at       :datetime
#  end_at         :datetime
#  status         :integer
#  note           :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :scout do
    
  end
end
