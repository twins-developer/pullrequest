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

require 'rails_helper'

RSpec.describe ConfirmDocument, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
