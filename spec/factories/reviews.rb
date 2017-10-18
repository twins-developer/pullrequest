# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  staff_id   :integer
#  title      :string
#  started_on :date
#  ended_on   :date
#  note       :text
#  code       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_reviews_on_staff_id  (staff_id)
#
# Foreign Keys
#
#  fk_rails_...  (staff_id => staffs.id)
#

FactoryGirl.define do
  factory :review do
    staff nil
    started_on Date.today
    ended_on Date.today
    title { Faker::Commerce.product_name }
    note { Faker::Lorem.paragraph }
    code { Faker::Lorem.paragraph }
  end
end
