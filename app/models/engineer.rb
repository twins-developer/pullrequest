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

    # -----------------
    # HasAne
    # -----------------
    has_one :profile, class_name: 'Engineers::Profile', dependent: :destroy
    accepts_nested_attributes_for :profile
    has_one :desire, class_name: 'Engineers::Desire', dependent: :destroy
    accepts_nested_attributes_for :desire
    has_one :career, class_name: 'Engineers::Career', dependent: :destroy
    accepts_nested_attributes_for :career
    has_one :interview, dependent: :destroy, as: :resource
    accepts_nested_attributes_for :interview

    # -----------------
    # HasMany
    # -----------------
    has_many :engineer_frame_works, through: :resource_frame_works, source: :frame_work
    has_many :engineer_skills, through: :resource_skill, source: :skill
    has_many :engineer_tools, through: :resource_tool, source: :tool
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
    # Profile
    # -----------------
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
    delegate :delivery, to: :profile

    # -----------------
    # Desire
    # -----------------
    delegate :shift, to: :desire
    delegate :timing, to: :desire
    delegate :salary, to: :desire
    delegate :job_category, to: :desire

    # -----------------
    # Career
    # -----------------
    delegate :team_size, to: :career
    delegate :role, to: :career

    # -----------------
    # Interview
    # -----------------
    delegate :date, to: :interview
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
    engineer = Engineer.find(id)
    engineer.build_profile.save!
    engineer.build_desire.save!
    engineer.build_career.save!
    engineer.build_interview.save!
  end

  #
  # プロフィールが全て埋まっているかどうかを返す
  #
  # @return [Boolean] プロフィールが全て登録されていればtrue、未登録であればfalse
  #
  def filled_profile?
    image && name &&
    birthday && gender &&
    address && portfolio &&
    tel && communication && delivery
  end

  #
  # 希望条件が全て埋まっているかどうかを返す
  #
  # @return [Boolean] 希望条件が全て登録されていればtrue、未登録であればfalse
  #
  def filled_desire?
    shift && timing &&
    salary && job_category
  end

  #
  # 経歴が全て埋まっているかどうかを返す
  #
  # @return [Boolean] 経歴が全て登録されていればtrue、未登録であればfalse
  #
  def filled_career?
    team_size && role
  end

  #
  # 面談情報が全て埋まっているかどうかを返す
  #
  # @return [Boolean] 面談情報が全て登録されていればtrue、未登録であればfalse
  #
  def filled_interview?
    date && place && communication_id && means
  end

  def age
    date_format = "%Y%m%d"
    (Time.zone.today.strftime(date_format).to_i - self.birthday.strftime(date_format).to_i) / 10000
  end
end
