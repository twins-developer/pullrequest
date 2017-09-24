FactoryGirl.define do
  factory :engineers_profile, class: 'engineers::Profile' do
    engineer nil
    image { open(Faker::Avatar.image) }
    last_name { Faker::Japanese::Name.last_name }
    last_name_kana { last_name.yomi }
    first_name { Faker::Japanese::Name.first_name }
    first_name_kana { first_name.yomi }
    birthday { Date.today - 3.years }
    gender :woman
    zip_code { Faker::Address.zip_code }
    prefecture { Faker::Address.state }
    city { Faker::Address.city }
    street { Faker::Address.street_address }
    building { Faker::Address.building_number }
    tel { Faker::PhoneNumber.phone_number }
  end
end
