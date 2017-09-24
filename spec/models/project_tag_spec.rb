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

require 'rails_helper'

RSpec.describe ProjectTag, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
