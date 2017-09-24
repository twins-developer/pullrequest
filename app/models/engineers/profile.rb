class Engineers::Profile < ApplicationRecord
  mount_uploader :image, ImageUploader
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :engineer

  #
  # フルネームを返す
  #
  # @return [String]
  #
  def name
    [last_name, first_name].join ' '
  end
end
