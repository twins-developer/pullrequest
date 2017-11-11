# == Schema Information
#
# Table name: tools
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  code       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Tool, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
