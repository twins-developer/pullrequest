# == Schema Information
#
# Table name: work_tags
#
#  id                :integer          not null, primary key
#  engineer_id       :integer
#  tag_id            :integer
#  engineers_work_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
# Indexes
#
#  index_work_tags_on_engineer_id        (engineer_id)
#  index_work_tags_on_engineers_work_id  (engineers_work_id)
#  index_work_tags_on_tag_id             (tag_id)
#
# Foreign Keys
#
#  fk_rails_...  (engineer_id => engineers.id)
#  fk_rails_...  (engineers_work_id => engineers_works.id)
#  fk_rails_...  (tag_id => tags.id)
#

class WorkTag < ApplicationRecord
end
