# == Schema Information
#
# Table name: weekly_menus
#
#  id         :bigint           not null, primary key
#  week_id    :bigint
#  menu_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class WeeklyMenuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
