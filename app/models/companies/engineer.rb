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

class Companies::Engineer < ApplicationRecord
end
