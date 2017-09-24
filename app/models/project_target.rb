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

class ProjectTarget < ApplicationRecord
end
