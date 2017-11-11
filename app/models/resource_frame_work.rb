# == Schema Information
#
# Table name: resource_frame_works
#
#  id            :integer          not null, primary key
#  frame_work_id :integer
#  resource_type :string
#  resource_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_resource_frame_works_on_frame_work_id  (frame_work_id)
#
# Foreign Keys
#
#  fk_rails_...  (frame_work_id => frame_works.id)
#

class ResourceFrameWork < ApplicationRecord
  # -------------------------------------------------------------------------------
  # Relations
  # -------------------------------------------------------------------------------
  belongs_to :resource, polymorphic: true

  # -------------------------------------------------------------------------------
  # InstanceMethods
  # -------------------------------------------------------------------------------

  # Engineer,Companyを返す
  def resource
    resource_type == 'Engineer' ? Engineer.find(resource_id) : Company.find(resource_id)
  end
end
