# == Schema Information
#
# Table name: resource_tools
#
#  id            :integer          not null, primary key
#  tool_id       :integer
#  resource_type :string
#  resource_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_resource_tools_on_tool_id  (tool_id)
#
# Foreign Keys
#
#  fk_rails_...  (tool_id => tools.id)
#

class ResourceTool < ApplicationRecord
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
