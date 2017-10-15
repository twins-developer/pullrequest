# == Schema Information
#
# Table name: engineers
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_engineers_on_email                 (email) UNIQUE
#  index_engineers_on_reset_password_token  (reset_password_token) UNIQUE
#

class Engineer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  has_one :profile, class_name: 'Engineers::Profile', dependent: :destroy
  accepts_nested_attributes_for :profile
  has_one :unconfirmed_address, as: :resource, dependent: :destroy
  has_many :applies, dependent: :destroy
  has_many :scouts, dependent: :destroy

  # -------------------------------------------------------------------------------
  # Callbacks
  # -------------------------------------------------------------------------------
  after_create :build_default_associations

  # -------------------------------------------------------------------------------
  # Delegations
  # -------------------------------------------------------------------------------
  delegate :image, to: :profile
  delegate :name, to: :profile
  delegate :last_name, to: :profile
  delegate :last_name_kana, to: :profile
  delegate :first_name, to: :profile
  delegate :first_name_kana, to: :profile
  delegate :birthday, to: :profile
  delegate :gender, to: :profile
  delegate :prefecture, to: :profile
  delegate :zip_code, to: :profile
  delegate :city, to: :profile
  delegate :street, to: :profile
  delegate :building, to: :profile
  delegate :building, to: :profile
  delegate :tel, to: :profile
  delegate :country, to: :profile
  delegate :message, to: :profile

  # -------------------------------------------------------------------------------
  # InstanceMethods
  # -------------------------------------------------------------------------------

  #
  # スタートアップの子モデルを作成する
  #
  def build_default_associations
    engineer = Engineer.find(id)
    engineer.build_profile.save
    engineer.build_unconfirmed_address.save
  end

  #
  # プロフィールが全て埋まっているかどうかを返す
  #
  # @return [Boolean] プロフィールが全て登録されていればtrue、未登録であればfalse
  #
  def set_profile?
    image && last_name && last_name_kana && first_name && first_name_kana &&
    birthday && gender &&
    zip_code && prefecture && city && street && building &&
    tel && country && message
  end
end
