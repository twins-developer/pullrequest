# == Schema Information
#
# Table name: engineers_profiles
#
#  id            :integer          not null, primary key
#  engineer_id   :integer
#  status        :integer
#  image         :string
#  name          :string
#  birthday      :date
#  gender        :integer
#  communication :integer
#  delivery      :boolean
#  address       :string
#  tel           :string
#  portfolio     :string
#  blacklist     :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_engineers_profiles_on_engineer_id  (engineer_id)
#
# Foreign Keys
#
#  fk_rails_...  (engineer_id => engineers.id)
#

class Engineers::Profile < ApplicationRecord
  mount_uploader :image, ImageUploader
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :engineer

  # -------------------------------------------------------------------------------
  # Enumerables
  # -------------------------------------------------------------------------------
  # @TODO enumの命名チェックしてもらう

  # 性別
  # woman -> 女性
  # man -> 男性
  enum gender: {
    woman:  1000,
    man:    2000
  }

  # 利用状況
  # passed -> 可
  # failed -> 不可
  # balck_list -> ブラックリスト
  # 可・不可はエンジニアとしての技量としての判断
  enum status: {
    passed:  1000,
    failed:    2000,
    balck_list: 3000
  }

  # 案件配信
  # hoped -> 希望
  # no_hoped -> 希望なし
  enum delivery: {
    hoped:  1000,
    no_hoped:    2000,
  }

  # 連絡方法
  # email -> Eメール
  # tel -> 電話
  enum communication: {
    email:  1000,
    tel:    2000,
  }

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  # @TODO 細かいバリデーションの設定
  validates :engineer, presence: true
  validates :name, presence: true, on: :update
  validates :birthday, presence: true, on: :update
  validates :gender, presence: true
  validates :address, presence: true, on: :update
  validates :communication, presence: true, on: :update
  validates :delivery, presence: true, on: :update
  validates :portfolio, presence: true, on: :update
  validates :tel, presence: true, on: :update
end
