# == Schema Information
#
# Table name: project_tags
#
#  id         :integer          not null, primary key
#  tag_id     :integer
#  project_id :integer
#  company_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_project_tags_on_company_id  (company_id)
#  index_project_tags_on_project_id  (project_id)
#  index_project_tags_on_tag_id      (tag_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (project_id => projects.id)
#  fk_rails_...  (tag_id => tags.id)
#

class ProjectTag < ApplicationRecord
end
