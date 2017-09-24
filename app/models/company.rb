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

  # -------------------------------------------------------------------------------
  # Delegations
  # -------------------------------------------------------------------------------
  delegate :image, to: :basic_info
  delegate :name, to: :basic_info

end
