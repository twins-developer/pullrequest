# == Schema Information
#
# Table name: applies
#
#  id              :integer          not null, primary key
#  engineer_id     :integer
#  company_id      :integer
#  interviewed_on  :date
#  start_at        :datetime
#  end_at          :datetime
#  status          :integer
#  engineer_reason :text
#  company_reason  :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe Apply, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
