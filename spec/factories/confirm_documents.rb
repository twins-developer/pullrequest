# == Schema Information
#
# Table name: confirm_documents
#
#  id                     :integer          not null, primary key
#  unconfirmed_address_id :integer
#  image                  :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

FactoryGirl.define do
  factory :confirm_document do
    
  end
end
