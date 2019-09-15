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

class MenuItem < ApplicationRecord
  belongs_to :menu
  belongs_to :item
end
