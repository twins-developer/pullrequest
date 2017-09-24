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

class Engineers::Work < ApplicationRecord
end
