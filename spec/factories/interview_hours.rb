# == Schema Information
#
# Table name: interview_hours
#
#  id             :integer          not null, primary key
#  company_id     :integer
#  scout_id       :integer
#  apply_id       :integer
#  interviewed_on :date             not null
#  wday           :integer          not null
#  hour           :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_interview_hours_on_apply_id    (apply_id)
#  index_interview_hours_on_company_id  (company_id)
#  index_interview_hours_on_scout_id    (scout_id)
#
# Foreign Keys
#
#  fk_rails_...  (apply_id => applies.id)
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (scout_id => scouts.id)
#

FactoryGirl.define do
  factory :interview_hour do
    
  end
end
