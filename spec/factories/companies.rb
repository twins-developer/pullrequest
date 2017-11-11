# == Schema Information
#
# Table name: companies
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
#  index_companies_on_email                 (email) UNIQUE
#  index_companies_on_reset_password_token  (reset_password_token) UNIQUE
#

FactoryGirl.define do
  factory :company do
    sequence(:email) { |n| "company#{n}@example.com" }
    password 'hogehoge'
    password_confirmation 'hogehoge'

    after(:build) do |company|
      company.basic_info ||= build(:companies_basic_info,
        company: company
      )
    end

    after(:create) do |company|
      company.interview ||= create(:interview,
        resource_type: 'Company', resource_id: company.id
      )
    end

    trait :with_resource_frame_works do
      after(:create) do |company|
        create_list(
          :resource_frame_work, 10, resource_type: 'Company', resource_id: company.id
        )
      end
    end

    trait :with_resource_skills do
      after(:create) do |company|
        create_list(
          :resource_skill, 10, resource_type: 'Company', resource_id: company.id
        )
      end
    end

    trait :with_resource_tools do
      after(:create) do |company|
        create_list(
          :resource_tool, 10, resource_type: 'Company', resource_id: company.id
        )
      end
    end
  end
end
