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
  has_one :unconfirmed_address, as: :resource
  has_many :projects

  # -------------------------------------------------------------------------------
  # Delegations
  # -------------------------------------------------------------------------------
  delegate :image, to: :basic_info
  delegate :name, to: :basic_info
  delegate :prefecture, to: :basic_info
  delegate :zip_code, to: :basic_info
  delegate :city, to: :basic_info
  delegate :street, to: :basic_info
  delegate :building, to: :basic_info
end
