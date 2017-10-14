# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  company_id :integer
#  start_on   :date
#  end_on     :date
#  status     :integer
#  title      :string
#  note       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_projects_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

FactoryGirl.define do
  factory :project do
    company nil
    start_on Date.today
    end_on Date.today
    status nil
    title { Faker::Commerce.product_name }
    note { Faker::Lorem.paragraph }
  end
end
