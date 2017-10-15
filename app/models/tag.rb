# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  note       :text
#  image      :string           not null
#  category   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ApplicationRecord
  mount_uploader :image, ImageUploader

  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  has_many :project_tags
  has_many :projects, through: :project_tags
  # -------------------------------------------------------------------------------
  # Enumerables
  # -------------------------------------------------------------------------------
  # タグの種類
  #
  # - language     : プログラミング言語
  # - tool         : ツール
  enum category: {
    language:   1000,
    tool:     2000
  }
end
