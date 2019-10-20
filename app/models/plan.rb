class Plan < ApplicationRecord
  scope :active, -> { where(status: true) }
  has_many :payments, as: :payable

  def total_price_to_paise
    (total_price * 100)
  end
end
