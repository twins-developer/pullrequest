# == Schema Information
#
# Table name: resource_skills
#
#  id            :integer          not null, primary key
#  skill_id      :integer
#  resource_type :string
#  resource_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_resource_skills_on_skill_id  (skill_id)
#
# Foreign Keys
#
#  fk_rails_...  (skill_id => skills.id)
#

class ResourceSkill < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :resource, polymorphic: true

  # -------------------------------------------------------------------------------
  # InstanceMethods
  # -------------------------------------------------------------------------------

  # Engineer,Companyを返す
  def resource
    resource_type == 'Engineer' ? Engineer.find(resource_id) : Company.find(resource_id)
  end
end
