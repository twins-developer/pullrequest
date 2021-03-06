# == Schema Information
#
# Table name: scouts
#
#  id             :integer          not null, primary key
#  engineer_id    :integer
#  company_id     :integer
#  interviewed_on :date
#  start_at       :datetime
#  status         :integer
#  note           :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_scouts_on_company_id   (company_id)
#  index_scouts_on_engineer_id  (engineer_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (engineer_id => engineers.id)
#

require 'rails_helper'

RSpec.describe Scout, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
