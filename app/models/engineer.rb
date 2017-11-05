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
  delegate :status, to: :profile
  delegate :birthday, to: :profile
  delegate :gender, to: :profile
  delegate :communication, to: :profile
  delegate :address, to: :profile
  delegate :portfolio, to: :profile
  delegate :blacklist, to: :profile
  delegate :tel, to: :profile

  # -------------------------------------------------------------------------------
  # InstanceMethods
  # -------------------------------------------------------------------------------

  #
  # スタートアップの子モデルを作成する
  #
  def build_default_associations
    engineer = Engineer.find(id)
    engineer.build_profile.save
  end

  #
  # プロフィールが全て埋まっているかどうかを返す
  #
  # @return [Boolean] プロフィールが全て登録されていればtrue、未登録であればfalse
  #
  def set_profile?
    image && name &&
    birthday && gender &&
    address && portfolio &&
    tel && communication && delivery
  end
end
