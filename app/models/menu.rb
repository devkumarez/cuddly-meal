class Menu < ApplicationRecord
  enum category: [:indian, :chinese]
  enum food_type: [:veg, :non_veg]
  enum available: [:breakfast, :lunch, :dinner, :forever]

  scope :active, -> { where(status: true) }
end
