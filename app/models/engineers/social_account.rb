# == Schema Information
#
# Table name: engineers_social_accounts
#
#  id          :integer          not null, primary key
#  engineer_id :integer
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_engineers_social_accounts_on_engineer_id  (engineer_id)
#
# Foreign Keys
#
#  fk_rails_...  (engineer_id => engineers.id)
#

class Engineers::SocialAccount < ApplicationRecord
end
