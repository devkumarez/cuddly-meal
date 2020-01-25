# == Schema Information
#
# Table name: user_credits
#
#  id               :bigint           not null, primary key
#  user_id          :bigint
#  credit           :decimal(, )
#  created_by_type  :string
#  created_by_id    :bigint
#  transaction_type :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class UserCreditTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
