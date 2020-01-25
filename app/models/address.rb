# == Schema Information
#
# Table name: addresses
#
#  id         :bigint           not null, primary key
#  street     :string
#  city       :string
#  state      :string
#  country    :string
#  landmark   :string
#  zip        :integer
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  drop_at    :string
#  name       :string
#  building   :string
#  locality   :string
#

class Address < ApplicationRecord
  belongs_to :user
end
