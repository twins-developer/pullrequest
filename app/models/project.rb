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

class Project < ApplicationRecord
end
