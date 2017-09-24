FactoryGirl.define do
  factory :engineer do
    sequence(:email) { |n| "engineer#{n}@example.com" }
    password 'hogehoge'
    password_confirmation 'hogehoge'

    after(:build) do |engineer|
      engineer.profile ||= build(:engineers_profile,
        engineer: engineer,
        zip_code: nil,
        prefecture: nil,
        city: nil,
        street: nil,
        building: nil
      )
    end
  end
end
