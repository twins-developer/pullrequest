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
    # -----------------
    # HasAne
    # -----------------
    has_one :basic_info, class_name: 'Companies::BasicInfo', dependent: :destroy
    accepts_nested_attributes_for :basic_info
    has_one :interview, dependent: :destroy, as: :resource
    accepts_nested_attributes_for :interview

    # -----------------
    # HasMany
    # -----------------
    has_many :company_frame_works, through: :resource_frame_works, source: :frame_work
    has_many :company_skills, through: :resource_skill, source: :skill
    has_many :company_tools, through: :resource_tool, source: :tool
    has_many :scouts, dependent: :destroy

    # -----------------
    # Intermediate
    # -----------------
    has_many :resource_frame_works, dependent: :destroy, as: :resource
    has_many :resource_skills, dependent: :destroy, as: :resource
    has_many :resource_tools, dependent: :destroy, as: :resource

  # -------------------------------------------------------------------------------
  # Delegations
  # -------------------------------------------------------------------------------

    # -----------------
    # BasicInfo
    # -----------------
    delegate :image, to: :basic_info
    delegate :name, to: :basic_info
    delegate :founded_on, to: :basic_info
    delegate :address, to: :basic_info
    delegate :tel, to: :basic_info
    delegate :capital, to: :basic_info
    delegate :ceo, to: :basic_info
    delegate :responsible_person, to: :basic_info

    # -----------------
    # Interview
    # -----------------
    delegate :interview_at, to: :interview
    delegate :place, to: :interview
    delegate :communication_id, to: :interview
    delegate :means, to: :interview

  # -------------------------------------------------------------------------------
  # Callbacks
  # -------------------------------------------------------------------------------
  after_create :build_default_associations

  # -------------------------------------------------------------------------------
  # InstanceMethods
  # -------------------------------------------------------------------------------

  #
  # スタートアップの子モデルを作成する
  #
  def build_default_associations
    company = Company.find(id)
    company.build_basic_info.save
    company.build_interview.save
  end

  #
  # 会社情報が全て埋まっているかどうかを返す
  #
  # @return [Boolean] 会社情報が全て登録されていればtrue、未登録であればfalse
  #
  def filled_basic_info?
    image && name && founded_on && address &&
    tel && capital && ceo && responsible_person
  end

  #
  # 面談情報が全て埋まっているかどうかを返す
  #
  # @return [Boolean] 面談情報が全て登録されていればtrue、未登録であればfalse
  #
  def filled_interview?
    date && place && communication_id && means
  end
end
