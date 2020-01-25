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
#  first_name             :string
#  last_name              :string
#  mobile_number          :bigint
#


class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :payments
  has_many :user_credits
  has_many :addresses
  has_many :providers

  class << self
    def create_from_provider_data(auth)
      provider = Provider.find_or_initialize_by(email: auth["email"], provider: auth["provider"], uid: auth["id"]) do |provider|
        unless provider.user.present?
          if user = User.where(email: auth['email']).first
          else
            user = create_user_with_provider_data(auth)
          end
          provider.user_id = user.id
          provider.save
        end
      end
      return provider.user
    end
    
    def create_user_with_provider_data auth
      User.create(
        password: Devise.friendly_token[0, 20],
        name: auth["name"],
        image: auth["photoUrl"],
        first_name: auth["firstName"],
        last_name: auth["lastName"],
        provider: auth["provider"],
        uid: auth["id"],
        email: auth["email"]
      )
    end
  end

  

  def generate_jwt
    payload = {
      id: id,
    }
    secret = ENV['SECRET_KEY_BASE']
    token = JWT.encode payload, secret, 'HS256'
  end

  def self.decode_token token
    secret = Rails.application.secrets.secret_key_base # TODO:
    decoded_token = JWT.decode token, secret, true, { algorithm: 'HS256' }
  end

  def token
    generate_jwt
  end
  

end
