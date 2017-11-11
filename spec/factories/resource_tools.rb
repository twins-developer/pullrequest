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

FactoryGirl.define do
  factory :resource_tool do
    resource_type nil
    resource_id nil
    tool_id { Tool.pluck(:id).sample }
  end
end
