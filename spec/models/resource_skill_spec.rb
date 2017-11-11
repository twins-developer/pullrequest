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

require 'rails_helper'

RSpec.describe ResourceSkill, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
