# == Schema Information
#
# Table name: payments
#
#  id           :bigint           not null, primary key
#  payment_json :jsonb
#  payable_type :string
#  payable_id   :bigint
#  user_id      :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
