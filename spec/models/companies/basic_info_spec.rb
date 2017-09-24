# == Schema Information
#
# Table name: companies_basic_infos
#
#  id         :integer          not null, primary key
#  company_id :integer
#  status     :integer
#  name       :string
#  image      :string
#  founded_on :date
#  zip_code   :string
#  prefecture :string
#  city       :string
#  street     :string
#  building   :string
#  tel        :string
#  capital    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Companies::BasicInfo, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
