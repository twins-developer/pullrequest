# == Schema Information
#
# Table name: companies_careers
#
#  id         :integer          not null, primary key
#  company_id :integer
#  summary    :text
#  what_note  :text
#  why_note   :text
#  other_note :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_companies_careers_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

class Companies::Career < ApplicationRecord
end
