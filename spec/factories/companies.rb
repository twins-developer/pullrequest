FactoryGirl.define do
  factory :company do
    sequence(:email) { |n| "company#{n}@example.com" }
    password 'hogehoge'
    password_confirmation 'hogehoge'

    after(:build) do |company|
      company.basic_info ||= build(:companies_basic_info,
        company: company,
        zip_code: nil,
        prefecture: nil,
        city: nil,
        street: nil,
        building: nil
      )
    end

  #   trait :with_companies_bank_accounts do
  #     after(:create) do |company|
  #       create(:companies_bank_accounts, company: company)
  #     end
  #   end
  #
  #   trait :with_plans do
  #     after(:create) do |company|
  #       create_list(:plan, 9, :with_images, :with_plan_tags, company: company)
  #     end
  #   end
  #
  #
  #   trait :with_deliveries do
  #     after(:create) do |company|
  #       today = Time.zone.today
  #       create(:delivery,
  #         delivered_on: today,
  #         user: User.last,
  #         status: :agreed,
  #         start_at: today - 14.hours,
  #         end_at: today- 11.hours,
  #         company: company,
  #         plan: Plan.last,
  #       )
  #       for num in 1..5 do
  #         today += 3.hours
  #         create(:delivery,
  #           delivered_on: today,
  #           user: User.last,
  #           status: :applied,
  #           start_at: today,
  #           end_at: today + 3.hours,
  #           company: company,
  #           plan: Plan.last,
  #         )
  #       end
  #
  #      tomorrow = today.tomorrow
  #      create(:delivery,
  #        delivered_on: tomorrow,
  #        user: User.last,
  #        status: :agreed,
  #        start_at: tomorrow,
  #        end_at: tomorrow + 3.hours,
  #        company: company,
  #        plan: Plan.last,
  #      )
  #      tomorrow += 3.hours
  #      create(:delivery,
  #        :with_reviews,
  #        delivered_on: tomorrow,
  #        user: User.last,
  #        status: :completed,
  #        start_at: tomorrow,
  #        end_at: tomorrow + 3.hours,
  #        company: company,
  #        plan: Plan.last,
  #      )
  #      tomorrow += 3.hours
  #      create(:delivery,
  #        delivered_on: tomorrow,
  #        user: User.last,
  #        status: :refused,
  #        start_at: tomorrow,
  #        end_at: tomorrow + 3.hours,
  #        company: company,
  #        plan: Plan.last,
  #      )
  #     tomorrow += 3.hours
  #     create(:delivery,
  #       delivered_on: tomorrow,
  #       user: User.last,
  #       status: :canceled,
  #       start_at: tomorrow,
  #       end_at: tomorrow + 3.hours,
  #       company: company,
  #       plan: Plan.last,
  #     )
  #     date = Time.zone.today.since(14.days)
  #     create(:delivery,
  #       delivered_on: date,
  #       user: User.last,
  #       start_at: date,
  #       end_at: date + 3.hours,
  #       company: company,
  #       plan: Plan.last,
  #     )
  #     date = Time.zone.today.since(15.days)
  #     create(:delivery,
  #       delivered_on: date,
  #       user: User.last,
  #       start_at: date,
  #       end_at: date + 3.hours,
  #       company: company,
  #       plan: Plan.last,
  #     )
  #     date = Time.zone.today.ago(15.days)
  #     create(:delivery,
  #       delivered_on: date,
  #       user: User.last,
  #       start_at: date,
  #       end_at: date + 3.hours,
  #       company: company,
  #       plan: Plan.last,
  #     )
  #     date = Time.zone.today.ago(1.month)
  #     create(:delivery,
  #       :with_reviews,
  #       delivered_on: date,
  #       status: :completed,
  #       user: User.last,
  #       start_at: date,
  #       end_at: date + 3.hours,
  #       company: company,
  #       plan: Plan.last,
  #     )
  #     date = date.ago(1.day)
  #     create(:delivery,
  #       :with_reviews,
  #       delivered_on: date,
  #       user: User.last,
  #       status: :completed,
  #       start_at: tomorrow,
  #       end_at: tomorrow + 3.hours,
  #       company: company,
  #       plan: Plan.last,
  #     )
  #     yesterday = Time.zone.today.yesterday
  #     create(:delivery,
  #       :with_reviews,
  #       delivered_on: yesterday,
  #       user: User.last,
  #       status: :completed,
  #       start_at: tomorrow,
  #       end_at: tomorrow + 3.hours,
  #       company: company,
  #       plan: Plan.last,
  #     )
  #     create(:delivery,
  #       :with_reviews,
  #       delivered_on: yesterday,
  #       user: User.last,
  #       status: :completed,
  #       start_at: yesterday + 2.hours,
  #       end_at: yesterday + 5.hours,
  #       company: company,
  #       plan: Plan.last,
  #     )
  #     today = Time.zone.today
  #     create(:delivery,
  #       :with_reviews,
  #       delivered_on: today,
  #       user: User.last,
  #       status: :completed,
  #       start_at: today,
  #       end_at: today - 3.hours,
  #       company: company,
  #       plan: Plan.last,
  #     )
  #     end
  #   end
  #   trait :with_delivery_reports do
  #     after(:create) do |company|
  #       company.deliveries.completed.each do |delivery|
  #         create(:delivery_report, company: company, delivery: delivery, plan: delivery.plan)
  #       end
  #     end
  #   end
  #
  #
  #   #
  #   # 承認済みのエントリーを作成する
  #   #
  #   after(:create) do |company|
  #       create(:unconfirmed_address,
  #         resource_type: 'company',
  #         resource_id: 2,
  #         status: :confirmed
  #       ) if company.find_by(id: 2).present?
  #   end
  # end
  end
end