FactoryGirl.define do
  factory :staff do
    sequence(:email) { |n| "staff#{n}@example.com" }
    password 'hogehoge'
    password_confirmation 'hogehoge'
    name { Faker::Japanese::Name.name }
  end
end
