# == Schema Information
#
# Table name: applies
#
#  id              :integer          not null, primary key
#  engineer_id     :integer
#  company_id      :integer
#  project_id      :integer
#  interviewed_on  :date
#  start_at        :datetime
#  status          :integer
#  engineer_reason :text
#  company_reason  :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_applies_on_company_id   (company_id)
#  index_applies_on_engineer_id  (engineer_id)
#  index_applies_on_project_id   (project_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (engineer_id => engineers.id)
#  fk_rails_...  (project_id => projects.id)
#

FactoryGirl.define do
  factory :apply do
    
  end
end
