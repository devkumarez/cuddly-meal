# == Schema Information
#
# Table name: providers
#
#  id         :bigint           not null, primary key
#  uid        :string
#  provider   :string
#  email      :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Provider < ApplicationRecord
  belongs_to :user
end
