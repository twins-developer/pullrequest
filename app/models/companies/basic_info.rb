# == Schema Information
#
# Table name: companies_basic_infos
#
#  id                 :integer          not null, primary key
#  company_id         :integer
#  status             :integer
#  name               :string
#  image              :string
#  founded_on         :date
#  address            :string
#  tel                :string
#  capital            :string
#  ceo                :string
#  responsible_person :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_companies_basic_infos_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

class Companies::BasicInfo < ApplicationRecord
  mount_uploader :image, ImageUploader
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :company

  # -------------------------------------------------------------------------------
  # Attributes
  # -------------------------------------------------------------------------------
  attribute :name, default:'Unknown'

  # -------------------------------------------------------------------------------
  # Enumerables
  # -------------------------------------------------------------------------------
  # @TODO enumの命名チェックしてもらう

  # 利用状況
  # passed -> 可
  # failed -> 不可
  # balck_list -> ブラックリスト
  enum status: {
    passed:  1000,
    failed:    2000,
    balck_list: 3000
  }

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  # @TODO 細かいバリデーションの設定
  validates :company, presence: true
  validates :name, presence: true, on: :update
  validates :founded_on, presence: true
  validates :address, presence: true, on: :update
  validates :tel, presence: true, on: :update
  validates :capital, presence: true, on: :update
  validates :ceo, presence: true, on: :update
  validates :responsible_person, presence: true, on: :update
end
