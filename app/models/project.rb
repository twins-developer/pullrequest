# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  company_id :integer
#  start_on   :date
#  end_on     :date
#  status     :integer
#  title      :string
#  note       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Project < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :company
  has_many :applies, dependent: :destroy

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :title, presence: true, length: { in: 10..50 }
  validates :start_on, presence: true
  validates :end_on, presence: true
  validates :note, presence: true, length: { maximum: 10000 }

  # -------------------------------------------------------------------------------
  # Enumerables
  # -------------------------------------------------------------------------------
  # 公開状況
  #
  # - showing       : 公開中
  # - draft         : 下書き
  # - hidden        : 公開停止(by admin)
  # - deleted       : 削除
  enum status: {
    showing:   1000,
    draft:     2000,
    hidden:    3000,
    deleted:   4000
  }

  # -------------------------------------------------------------------------------
  # Attributes
  # -------------------------------------------------------------------------------

  attribute :status, default: statuses[:showing]
end
