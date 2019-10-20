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

class Order < ApplicationRecord
  belongs_to :user
  belongs_to :address
  belongs_to :menu

  has_many :payments, as: :payable
  has_many :user_credits, as: :created_by
end
