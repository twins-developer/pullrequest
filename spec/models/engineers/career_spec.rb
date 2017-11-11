# == Schema Information
#
# Table name: engineers_careers
#
#  id          :integer          not null, primary key
#  engineer_id :integer
#  team_size   :string
#  role        :string           default([]), is an Array
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_engineers_careers_on_engineer_id  (engineer_id)
#
# Foreign Keys
#
#  fk_rails_...  (engineer_id => engineers.id)
#

require 'rails_helper'

RSpec.describe Engineers::Career, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
