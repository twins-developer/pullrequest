# == Schema Information
#
# Table name: engineers_profiles
#
#  id              :integer          not null, primary key
#  engineer_id     :integer
#  status          :integer
#  image           :string
#  last_name       :string
#  last_name_kana  :string
#  first_name      :string
#  first_name_kana :string
#  birthday        :date
#  gender          :integer
#  zip_code        :string
#  prefecture      :string
#  city            :string
#  street          :string
#  building        :string
#  tel             :string
#  language        :string
#  country         :string
#  message         :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
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
  enum gender: {
    woman:  1,
    man:    2
  }

  # -------------------------------------------------------------------------------
  # Validations
  # -------------------------------------------------------------------------------
  validates :engineer, presence: true
  validates :last_name, presence: true, on: :update
  validates :last_name_kana, presence: true, on: :update
  validates :first_name, presence: true, on: :update
  validates :first_name_kana, presence: true, on: :update
  validates :birthday, presence: true, on: :update
  validates :gender, presence: true
  validates :zip_code, presence: true, format: { with: /\A\d{3}\-?\d{4}\z/ }, on: :update
  validates :prefecture, presence: true, on: :update
  validates :city, presence: true, on: :update
  validates :street, presence: true, on: :update
  validates :tel, presence: true, on: :update

  # -------------------------------------------------------------------------------
  # Attributes
  # -------------------------------------------------------------------------------
  attribute :gender, :integer, default: 1
  attribute :last_name, default:'Unknown'

  #
  # フルネームを返す
  #
  # @return [String]
  #
  def name
    [last_name, first_name].join ' '
  end
end
