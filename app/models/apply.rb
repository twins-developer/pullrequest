# == Schema Information
#
# Table name: applies
#
#  id              :integer          not null, primary key
#  engineer_id     :integer
#  company_id      :integer
#  project_id      :integer
#  interviewed_on  :date
#  start_at        :datetime
#  status          :integer
#  engineer_reason :text
#  company_reason  :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_applies_on_company_id   (company_id)
#  index_applies_on_engineer_id  (engineer_id)
#  index_applies_on_project_id   (project_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (engineer_id => engineers.id)
#  fk_rails_...  (project_id => projects.id)
#

class Apply < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :company
  belongs_to :project
  belongs_to :engineer
  has_many :interview_hours

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  # validates :title, presence: true, length: { in: 10..50 }
  # validates :start_on, presence: true
  # validates :end_on, presence: true
  # validates :note, presence: true, length: { maximum: 10000 }

  # -------------------------------------------------------------------------------
  # Enumerables
  # -------------------------------------------------------------------------------
  # 公開状況
  #
  # - showing       : 公開中
  # - draft         : 下書き
  # - hidden        : 公開停止(by admin)
  # - deleted       : 削除
  # enum status: {
  #   showing:   1000,
  #   draft:     2000,
  #   hidden:    3000,
  #   deleted:   4000
  # }

  # -------------------------------------------------------------------------------
  # Attributes
  # -------------------------------------------------------------------------------

  # attribute :status, default: statuses[:showing]
end
