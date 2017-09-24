class UnconfirmedAddress < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  has_many :confirm_documents, dependent: :destroy, inverse_of: :unconfirmed_address
  belongs_to :resource, polymorphic: true

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :zip_code, presence: true, format: { with: /\A\d{3}\-?\d{4}\z/ }
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :street, presence: true

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
