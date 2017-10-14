# == Schema Information
#
# Table name: interview_hour_masters
#
#  id         :integer          not null, primary key
#  company_id :integer
#  wday       :integer          not null
#  hour       :integer          not null
#  status     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_interview_hour_masters_on_company_id                    (company_id)
#  index_interview_hour_masters_on_company_id_and_wday_and_hour  (company_id,wday,hour) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

require 'rails_helper'

RSpec.describe InterviewHourMaster, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
