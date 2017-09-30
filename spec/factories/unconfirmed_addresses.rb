# == Schema Information
#
# Table name: unconfirmed_addresses
#
#  id            :integer          not null, primary key
#  status        :integer          not null
#  resource_type :string
#  resource_id   :integer
#  zip_code      :string
#  prefecture    :string
#  city          :string
#  street        :string
#  building      :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :unconfirmed_address do
    
  end
end
