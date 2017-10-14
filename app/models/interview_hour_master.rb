# == Schema Information
#
# Table name: interview_hour_masters
#
#  id         :integer          not null, primary key
#  company_id :integer
#  wday       :integer          not null
#  hour       :integer          not null
#  status     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_interview_hour_masters_on_company_id                    (company_id)
#  index_interview_hour_masters_on_company_id_and_wday_and_hour  (company_id,wday,hour) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

class InterviewHourMaster < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :company

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :company, presence: true
  validates :wday, presence: true
  validates :hour, presence: true

  # -------------------------------------------------------------------------------
  # Enumerables
  # -------------------------------------------------------------------------------
  enum wday: {
    sun: 0,
    mon: 1,
    tue: 2,
    wed: 3,
    thu: 4,
    fri: 5,
    sat: 6
  }

  # 空き状態
  #
  # - free   : 空いている
  # - buried : 予定・予約がある
  enum status: {
    free: 1000,
    buried: 2000
  }

  # -------------------------------------------------------------------------------
  # Attributes
  # -------------------------------------------------------------------------------
  attribute :status, default: statuses[:free]
end
