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

FactoryGirl.define do
  factory :resource_skill do
    resource_type nil
    resource_id nil
    skill_id { Skill.pluck(:id).sample }
  end
end
