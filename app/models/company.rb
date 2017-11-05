# == Schema Information
#
# Table name: companies
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
#  index_companies_on_email                 (email) UNIQUE
#  index_companies_on_reset_password_token  (reset_password_token) UNIQUE
#

class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  has_one :basic_info, class_name: 'Companies::BasicInfo', dependent: :destroy
  accepts_nested_attributes_for :basic_info
  has_one :career, class_name: 'Companies::Career', dependent: :destroy
  accepts_nested_attributes_for :career
  has_many :engineers, class_name: 'Companies::Engineer', dependent: :destroy
  accepts_nested_attributes_for :engineers
  has_one :unconfirmed_address, as: :resource, dependent: :destroy
  has_many :scouts

  # -------------------------------------------------------------------------------
  # Callbacks
  # -------------------------------------------------------------------------------
  after_create :build_default_associations
  # -------------------------------------------------------------------------------
  # Delegations
  # -------------------------------------------------------------------------------
  delegate :image, to: :basic_info
  delegate :name, to: :basic_info
  delegate :founded_on, to: :basic_info
  delegate :prefecture, to: :basic_info
  delegate :zip_code, to: :basic_info
  delegate :city, to: :basic_info
  delegate :street, to: :basic_info
  delegate :building, to: :basic_info
  delegate :tel, to: :basic_info
  delegate :capital, to: :basic_info

  # -------------------------------------------------------------------------------
  # InstanceMethods
  # -------------------------------------------------------------------------------

  #
  # 会社情報が全て埋まっているかどうかを返す
  #
  # @return [Boolean] 会社情報が全て登録されていればtrue、未登録であればfalse
  #
  def set_basic_info?
    image && name && founded_on && prefecture &&
    zip_code && prefecture && city && street && building &&
    tel && capital
  end

  #
  # スタートアップの子モデルを作成する
  #
  def build_default_associations
    company = Company.find(id)
    company.build_basic_info.save
    company.build_unconfirmed_address.save
    company.build_career.save
  end
end
