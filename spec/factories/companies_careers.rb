# == Schema Information
#
# Table name: companies_careers
#
#  id         :integer          not null, primary key
#  company_id :integer
#  summary    :text
#  what_note  :text
#  why_note   :text
#  other_note :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :companies_career, class: 'Companies::Career' do
    
  end
end
