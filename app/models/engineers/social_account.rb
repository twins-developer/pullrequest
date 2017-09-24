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

class Engineers::SocialAccount < ApplicationRecord
end
