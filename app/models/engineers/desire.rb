# == Schema Information
#
# Table name: engineers_desires
#
#  id           :integer          not null, primary key
#  engineer_id  :integer
#  shift        :integer          default([]), is an Array
#  timing       :integer
#  salary       :integer
#  job_category :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_engineers_desires_on_engineer_id  (engineer_id)
#
# Foreign Keys
#
#  fk_rails_...  (engineer_id => engineers.id)
#

class Engineers::Desire < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :engineer

  # -------------------------------------------------------------------------------
  # Enumerables
  # -------------------------------------------------------------------------------

  # 職種
  # engineer -> エンジニア
  # designer -> デザイナー
  # director -> PM/ディレクター
  # marketer -> マーケター
  enum job_category: {
    engineer: 1000,
    designer: 2000,
    director: 3000,
    marketer: 4000
  }

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  # @TODO 細かいバリデーションの設定・タイミング調整
  validates :engineer, presence: true
  validates :shift, presence: true, numericality: true, on: :update
  validates :timing, presence: true, numericality: true, on: :update
  validates :salary, presence: true, numericality: true, on: :update
  validates :job_category, presence: true, numericality: true, on: :update
end
