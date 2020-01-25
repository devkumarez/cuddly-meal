# == Schema Information
#
# Table name: weekly_menus
#
#  id         :bigint           not null, primary key
#  week_id    :bigint
#  menu_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class WeeklyMenu < ApplicationRecord
  belongs_to :week
  belongs_to :menu
end
