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
# Indexes
#
#  index_confirm_documents_on_unconfirmed_address_id  (unconfirmed_address_id)
#
# Foreign Keys
#
#  fk_rails_...  (unconfirmed_address_id => unconfirmed_addresses.id)
#

FactoryGirl.define do
  factory :confirm_document do
    
  end
end
