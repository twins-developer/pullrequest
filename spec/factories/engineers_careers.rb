# == Schema Information
#
# Table name: engineers_careers
#
#  id          :integer          not null, primary key
#  engineer_id :integer
#  team_size   :string
#  role        :string           default([]), is an Array
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_engineers_careers_on_engineer_id  (engineer_id)
#
# Foreign Keys
#
#  fk_rails_...  (engineer_id => engineers.id)
#

FactoryGirl.define do
  factory :engineers_career, class: 'Engineers::Career' do
    engineer nil
    team_size { rand(1..9) }
    role [1, 2, 3]
  end
end
