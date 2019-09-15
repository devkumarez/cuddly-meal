# == Schema Information
#
# Table name: orders
#
#  id              :bigint           not null, primary key
#  user_id         :bigint
#  address_id      :bigint
#  menu_id         :bigint
#  delivery_status :integer
#  total_credit    :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
