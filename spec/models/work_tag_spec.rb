# == Schema Information
#
# Table name: work_tags
#
#  id                :integer          not null, primary key
#  engineer_id       :integer
#  tag_id            :integer
#  engineers_work_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'rails_helper'

RSpec.describe WorkTag, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
