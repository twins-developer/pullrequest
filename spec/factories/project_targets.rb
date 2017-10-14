# == Schema Information
#
# Table name: project_targets
#
#  id         :integer          not null, primary key
#  project_id :integer
#  company_id :integer
#  skill_list :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_project_targets_on_company_id  (company_id)
#  index_project_targets_on_project_id  (project_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (project_id => projects.id)
#

FactoryGirl.define do
  factory :project_target do
    
  end
end
