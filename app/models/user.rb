# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  provider               :string           default("email"), not null
#  uid                    :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  allow_password_change  :boolean          default(FALSE)
#  remember_created_at    :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  name                   :string
#  nickname               :string
#  image                  :string
#  email                  :string
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  tokens                 :json
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#


class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :payments
  has_many :user_credits
  has_many :addresses

  class << self
    def create_from_provider_data(auth)
      where(email: auth["email"]).first_or_create do |user|
        user.password = Devise.friendly_token[0, 20]
        user.name = auth["name"]
        user.image = auth["photoUrl"]
        user.first_name = auth["firstName"]
        user.last_name = auth["lastName"]
        user.provider = auth["provider"]
        user.uid = auth["id"]
        # user.skip_confirmation!
      end
    end
  end
  

  def generate_jwt
    payload = {
      id: id,
    }
    secret = Rails.application.secrets.secret_key_base # TODO:
    token = JWT.encode payload, secret, 'HS256'
  end

  def self.decode_token token
    secret = Rails.application.secrets.secret_key_base # TODO:
    decoded_token = JWT.decode token, secret, true, { algorithm: 'HS256' }
  end

end
