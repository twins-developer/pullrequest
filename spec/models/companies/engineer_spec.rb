# == Schema Information
#
# Table name: companies_engineers
#
#  id          :integer          not null, primary key
#  company_id  :integer
#  engineer_id :integer
#  joined_on   :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_companies_engineers_on_company_id   (company_id)
#  index_companies_engineers_on_engineer_id  (engineer_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (engineer_id => engineers.id)
#

require 'rails_helper'

RSpec.describe Companies::Engineer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
