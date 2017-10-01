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

  # -------------------------------------------------------------------------------
  # Callbacks
  # -------------------------------------------------------------------------------
  after_save :build_default_associations

  # -------------------------------------------------------------------------------
  # Delegations
  # -------------------------------------------------------------------------------
  delegate :image, to: :profile
  delegate :name, to: :profile
  delegate :last_name, to: :profile
  delegate :first_name, to: :profile
  delegate :prefecture, to: :profile
  delegate :zip_code, to: :profile
  delegate :city, to: :profile
  delegate :street, to: :profile
  delegate :building, to: :profile

  #
  # スタートアップの子モデルを作成する
  #
  def build_default_associations
    engineer = Engineer.find(id)
    engineer.build_profile.save
    engineer.build_unconfirmed_address.save
  end
end
