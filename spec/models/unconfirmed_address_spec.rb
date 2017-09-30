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

require 'rails_helper'

RSpec.describe UnconfirmedAddress, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
