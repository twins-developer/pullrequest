# == Schema Information
#
# Table name: unconfirmed_addresses
#
#  id            :integer          not null, primary key
#  status        :integer          not null
#  resource_type :string
#  resource_id   :integer
#  zip_code      :string
#  prefecture    :string
#  city          :string
#  street        :string
#  building      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class UnconfirmedAddress < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  has_many :confirm_documents, dependent: :destroy, inverse_of: :unconfirmed_address
  belongs_to :resource, polymorphic: true

  # -------------------------------------------------------------------------------
  # Enumerables
  # -------------------------------------------------------------------------------
  # 申請・審査の状態
  #
  # - prepare       : 申請準備中
  # - confirmation  : 審査中
  # - confirmed     : 完了
  # - resubmit      : 再提出
  enum status: {
    prepare: 6000,
    confirmation: 7000,
    confirmed: 8000,
    resubmit: 9000
  }

  # -------------------------------------------------------------------------------
  # Attributes
  # -------------------------------------------------------------------------------

  attribute :status, default: statuses[:prepare]
end
