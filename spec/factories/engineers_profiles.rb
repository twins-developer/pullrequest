# == Schema Information
#
# Table name: engineers_profiles
#
#  id            :integer          not null, primary key
#  engineer_id   :integer
#  status        :integer
#  image         :string
#  name          :string
#  birthday      :date
#  gender        :integer
#  communication :integer
#  delivery      :boolean
#  address       :string
#  tel           :string
#  portfolio     :string
#  blacklist     :boolean
#  document      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_engineers_profiles_on_engineer_id  (engineer_id)
#
# Foreign Keys
#
#  fk_rails_...  (engineer_id => engineers.id)
#

FactoryGirl.define do
  factory :engineers_profile, class: 'Engineers::Profile' do
    engineer nil
    image { open(Faker::Avatar.image) }
    name { Faker::Japanese::Name.name }
    birthday { Date.today - 3.years }
    gender :man
    address { Faker::Address.full_address }
    tel { Faker::PhoneNumber.phone_number }
    status :passed
    communication Engineers::Profile.communications.keys.sample
    delivery false
    portfolio { Faker::Internet.domain_word }
  end
end
