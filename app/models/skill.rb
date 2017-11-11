# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  code       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Skill < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
    # -----------------
    # HasMany
    # -----------------
    has_many :skill_engineers, through: :resource_skill, source: :engineer
    has_many :skill_companies, through: :resource_skill, source: :company

    # -----------------
    # Intermediate
    # -----------------
    has_many :resource_skills, dependent: :destroy, inverse_of: :skill, as: :resource

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :code, presence: true, numericality: true
end
