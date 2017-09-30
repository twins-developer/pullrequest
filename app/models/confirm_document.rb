# == Schema Information
#
# Table name: confirm_documents
#
#  id                     :integer          not null, primary key
#  unconfirmed_address_id :integer
#  image                  :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class ConfirmDocument < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :unconfirmed_address

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :unconfirmed_address, presence: true
  validates :image, presence: true

  # CarrierWave
  mount_uploader :image, ImageUploader
end
