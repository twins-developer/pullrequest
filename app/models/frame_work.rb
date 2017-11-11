# == Schema Information
#
# Table name: frame_works
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  code       :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FrameWork < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
    # -----------------
    # HasMany
    # -----------------
    has_many :frame_work_engineers, through: :resource_frame_work, source: :engineer
    has_many :frame_work_companies, through: :resource_frame_work, source: :company

    # -----------------
    # Intermediate
    # -----------------
    has_many :resource_frame_works, dependent: :destroy, inverse_of: :skill, as: :resource

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :code, presence: true, numericality: true
end
