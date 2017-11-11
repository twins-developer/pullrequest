# == Schema Information
#
# Table name: interviews
#
#  id               :integer          not null, primary key
#  status           :integer          not null
#  resource_type    :string
#  resource_id      :integer
#  interview_at     :datetime
#  place            :string
#  communication_id :integer
#  means            :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe Interview, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
