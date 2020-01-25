# == Schema Information
#
# Table name: menus
#
#  id          :bigint           not null, primary key
#  name        :string
#  category    :integer
#  food_type   :integer
#  available   :integer
#  description :text
#  price       :decimal(, )
#  status      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class MenuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
