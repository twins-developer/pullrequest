# == Schema Information
#
# Table name: engineers_careers
#
#  id          :integer          not null, primary key
#  engineer_id :integer
#  team_size   :string
#  role        :string           default([]), is an Array
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_engineers_careers_on_engineer_id  (engineer_id)
#
# Foreign Keys
#
#  fk_rails_...  (engineer_id => engineers.id)
#

class Engineers::Career < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :engineer

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  # @TODO 細かいバリデーションの設定・タイミング調整
  validates :engineer, presence: true
  validates :team_size, presence: true, numericality: true, on: :update
  validates :role, presence: true, numericality: true, on: :update
end
