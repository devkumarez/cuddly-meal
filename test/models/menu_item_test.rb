# == Schema Information
#
# Table name: menu_items
#
#  id         :bigint           not null, primary key
#  menu_id    :bigint
#  item_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MenuItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
