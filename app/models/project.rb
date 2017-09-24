# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  company_id :integer
#  start_at   :date
#  end_at     :date
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
