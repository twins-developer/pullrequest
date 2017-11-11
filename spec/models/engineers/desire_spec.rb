# == Schema Information
#
# Table name: engineers_desires
#
#  id           :integer          not null, primary key
#  engineer_id  :integer
#  shift        :integer          default([]), is an Array
#  timing       :integer
#  salary       :integer
#  job_category :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_engineers_desires_on_engineer_id  (engineer_id)
#
# Foreign Keys
#
#  fk_rails_...  (engineer_id => engineers.id)
#

require 'rails_helper'

RSpec.describe Engineers::Desire, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
