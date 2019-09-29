class WeeklyMenu < ApplicationRecord
  belongs_to :week
  belongs_to :menu
end
