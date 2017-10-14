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
# Indexes
#
#  index_companies_basic_infos_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

class Companies::BasicInfo < ApplicationRecord

  mount_uploader :image, ImageUploader
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :company

  # -------------------------------------------------------------------------------
  # Attributes
  # -------------------------------------------------------------------------------
  attribute :name, default:'Unknown'
end
