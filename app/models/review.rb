# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  staff_id   :integer
#  title      :string
#  started_on :date
#  ended_on   :date
#  note       :text
#  code       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_reviews_on_staff_id  (staff_id)
#
# Foreign Keys
#
#  fk_rails_...  (staff_id => staffs.id)
#

class Review < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :staff
end
