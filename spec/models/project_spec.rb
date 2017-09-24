# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  company_id :integer
#  start_at   :date
#  end_at     :date
#  status     :integer
#  title      :string
#  note       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Project, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
