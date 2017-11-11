# == Schema Information
#
# Table name: tools
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  code       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tool < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
    # -----------------
    # HasMany
    # -----------------
    has_many :tool_engineers, through: :resource_tool, source: :engineer
    has_many :tool_companies, through: :resource_tool, source: :company

    # -----------------
    # Intermediate
    # -----------------
    has_many :resource_tools, dependent: :destroy, inverse_of: :tool, as: :resource

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :code, presence: true, numericality: true
end
