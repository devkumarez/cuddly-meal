# == Schema Information
#
# Table name: plans
#
#  id           :bigint           not null, primary key
#  name         :string
#  total_credit :decimal(, )
#  total_price  :decimal(, )
#  status       :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Plan < ApplicationRecord
  scope :active, -> { where(status: true) }
  has_many :payments, as: :payable

  def total_price_to_paise
    (total_price * 100)
  end
end
