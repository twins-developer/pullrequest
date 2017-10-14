# == Schema Information
#
# Table name: interview_hours
#
#  id             :integer          not null, primary key
#  company_id     :integer
#  scout_id       :integer
#  apply_id       :integer
#  interviewed_on :date             not null
#  wday           :integer          not null
#  hour           :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_interview_hours_on_apply_id    (apply_id)
#  index_interview_hours_on_company_id  (company_id)
#  index_interview_hours_on_scout_id    (scout_id)
#
# Foreign Keys
#
#  fk_rails_...  (apply_id => applies.id)
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (scout_id => scouts.id)
#

class InterviewHour < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :company
  belongs_to :scout, optional: true
  belongs_to :apply, optional: true

  # -------------------------------------------------------------------------------
  # Scope
  # -------------------------------------------------------------------------------
  scope :find_current_month_hours, lambda {
    where(interviewed_on: Time.zone.today..(Time.zone.today + 7.days))
  }

  scope :find_interviewable_day, lambda {
    pluck(:interviewed_on).uniq!
  }
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


end
