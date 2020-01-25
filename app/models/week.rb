# == Schema Information
#
# Table name: weeks
#
#  id         :bigint           not null, primary key
#  day        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Week < ApplicationRecord
  enum day: [:sunday, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday]
  
  has_many :weekly_menus
  has_many :menus, through: :weekly_menus

  def self.seed
    days.values.each do |d|
      Week.find_or_create_by(day: d)
    end
  end
end
