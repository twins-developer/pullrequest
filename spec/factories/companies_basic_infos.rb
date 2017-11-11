# == Schema Information
#
# Table name: companies_basic_infos
#
#  id                 :integer          not null, primary key
#  company_id         :integer
#  status             :integer
#  name               :string
#  image              :string
#  founded_on         :date
#  address            :string
#  tel                :string
#  capital            :string
#  ceo                :string
#  responsible_person :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_companies_basic_infos_on_company_id  (company_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#

FactoryGirl.define do
  factory :companies_basic_info, class: 'Companies::BasicInfo' do
    company nil
    image { open(Faker::Avatar.image) }
    name { Faker::Japanese::Name.name }
    founded_on { Date.today - 3.years }
    address { Faker::Address.full_address }
    capital { rand(1000000..9000000) }
    ceo { Faker::Japanese::Name.name }
    tel { Faker::PhoneNumber.phone_number }
    responsible_person { Faker::Japanese::Name.name }
  end
end
