# == Schema Information
#
# Table name: engineers
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_engineers_on_email                 (email) UNIQUE
#  index_engineers_on_reset_password_token  (reset_password_token) UNIQUE
#

FactoryGirl.define do
  factory :engineer do
    sequence(:email) { |n| "engineer#{n}@example.com" }
    password 'hogehoge'
    password_confirmation 'hogehoge'

    after(:build) do |engineer|
      engineer.profile ||= build(:engineers_profile,
        engineer: engineer
      )
      engineer.career ||= build(:engineers_career,
        engineer: engineer
      )
      engineer.desire ||= build(:engineers_desire,
        engineer: engineer
      )
    end

    after(:create) do |engineer|
      engineer.interview ||= create(:interview,
        resource_type: 'Engineer', resource_id: engineer.id
      )
    end

    trait :with_resource_frame_works do
      after(:create) do |engineer|
        create_list(
          :resource_frame_work, 10, resource_type: 'Engineer', resource_id: engineer.id
        )
      end
    end

    trait :with_resource_skills do
      after(:create) do |engineer|
        create_list(
          :resource_skill, 10, resource_type: 'Engineer', resource_id: engineer.id
        )
      end
    end

    trait :with_resource_tools do
      after(:create) do |engineer|
        create_list(
          :resource_tool, 10, resource_type: 'Engineer', resource_id: engineer.id
        )
      end
    end

  end
end
