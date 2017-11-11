# == Schema Information
#
# Table name: interviews
#
#  id               :integer          not null, primary key
#  status           :integer          not null
#  resource_type    :string
#  resource_id      :integer
#  interview_at     :datetime
#  place            :string
#  communication_id :integer
#  means            :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Interview < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :resource, polymorphic: true

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :resource_type, presence: true
  validates :resource_id, presence: true

  # -------------------------------------------------------------------------------
  # Enumerables
  # -------------------------------------------------------------------------------

  # 状況
  # applied    -> 日程調整未完了
  # scheduled  -> 日程調整完了
  # compeleted -> 面談完了
  enum status: {
    applied:    1000,
    scheduled:  2000,
    compeleted: 3000
  }

  # -------------------------------------------------------------------------------
  # Default
  # -------------------------------------------------------------------------------
  attribute :status, default: statuses[:applied]

  # -------------------------------------------------------------------------------
  # InstanceMethods
  # -------------------------------------------------------------------------------

  # Engineer,Companyを返す
  def resource
    resource_type == 'Engineer' ? Engineer.find(resource_id) : Company.find(resource_id)
  end
end
