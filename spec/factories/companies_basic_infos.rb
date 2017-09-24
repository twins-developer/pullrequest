FactoryGirl.define do
  factory :companies_basic_info, class: 'Companies::BasicInfo' do
    company nil
    image { open(Faker::Avatar.image) }
    name { Faker::Japanese::Name.last_name }
    founded_on { Date.today - 3.years }
    zip_code { Faker::Address.zip_code }
    prefecture { Faker::Address.state }
    city { Faker::Address.city }
    street { Faker::Address.street_address }
    building { Faker::Address.building_number }
    tel { Faker::PhoneNumber.phone_number }
  end
end
