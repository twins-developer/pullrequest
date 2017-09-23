class Engineer < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  has_one :profile, class_name: 'Engineers::Profile', dependent: :destroy
  accepts_nested_attributes_for :profile
end
