class Companies::BasicInfo < ApplicationRecord

  mount_uploader :image, ImageUploader
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :company
end
