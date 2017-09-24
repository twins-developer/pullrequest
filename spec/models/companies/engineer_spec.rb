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

require 'rails_helper'

RSpec.describe Companies::Engineer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
