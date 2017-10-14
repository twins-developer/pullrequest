# == Schema Information
#
# Table name: engineers_works
#
#  id          :integer          not null, primary key
#  engineer_id :integer
#  tag_id      :integer
#  title       :string
#  url         :string
#  note        :string
#
# Indexes
#
#  index_engineers_works_on_engineer_id  (engineer_id)
#  index_engineers_works_on_tag_id       (tag_id)
#
# Foreign Keys
#
#  fk_rails_...  (engineer_id => engineers.id)
#  fk_rails_...  (tag_id => tags.id)
#

class Engineers::Work < ApplicationRecord
end
