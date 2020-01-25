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

class Menu < ApplicationRecord
  enum category: [:indian, :chinese]
  enum food_type: [:veg, :non_veg]
  enum available: [:breakfast, :lunch, :dinner, :forever]

  has_many :menu_items
  has_many :items, through: :menu_items

  scope :active, -> { where(status: true) }
end
