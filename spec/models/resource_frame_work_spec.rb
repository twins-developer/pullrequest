# == Schema Information
#
# Table name: resource_frame_works
#
#  id            :integer          not null, primary key
#  frame_work_id :integer
#  resource_type :string
#  resource_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_resource_frame_works_on_frame_work_id  (frame_work_id)
#
# Foreign Keys
#
#  fk_rails_...  (frame_work_id => frame_works.id)
#

require 'rails_helper'

RSpec.describe ResourceFrameWork, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
