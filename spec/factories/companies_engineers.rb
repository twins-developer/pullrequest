# == Schema Information
#
# Table name: companies_engineers
#
#  id          :integer          not null, primary key
#  company_id  :integer
#  engineer_id :integer
#  joined_on   :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :companies_engineer, class: 'Companies::Engineer' do
    
  end
end
