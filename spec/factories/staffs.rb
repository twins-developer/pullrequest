# == Schema Information
#
# Table name: staffs
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  name                   :string           default(""), not null
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
#  index_staffs_on_email                 (email) UNIQUE
#  index_staffs_on_reset_password_token  (reset_password_token) UNIQUE
#

FactoryGirl.define do
  factory :staff do
    sequence(:email) { |n| "staff#{n}@example.com" }
    password 'hogehoge'
    password_confirmation 'hogehoge'
    name { Faker::Japanese::Name.name }

    trait :with_reviews do
      after(:create) do |staff|
        create_list(:review, 3, staff: staff)
      end
    end

  end
end
