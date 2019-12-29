class ApplicationController < ActionController::Base
  protect_from_forgery unless: -> { request.format.json? }
  before_action :configure_permitted_parameters, if: :devise_controller?

  respond_to :json

  private

  
  def configure_permitted_parameters

    added_attrs = [:mobile_number]
    add_signup_attrs = [:email, :first_name, :last_name, :mobile_number]
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_up, keys: add_signup_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: add_signup_attrs
  end

  def authenticate_user
    if request.headers['Authorization'].present?
      authenticate_or_request_with_http_token do |token|
        begin
          jwt_payload = User.decode_token(token).first

          @current_user_id = jwt_payload['id']
        rescue JWT::ExpiredSignature, JWT::VerificationError, JWT::DecodeError
          head :unauthorized
        end
      end
    end
  end

  def authenticate_user!(options = {})
    head :unauthorized unless signed_in?
  end

  def current_user
    # todo please remove user.last when auth is ready
    # @current_user ||= super || User.find(@current_user_id)
    User.last
  end

  def signed_in?
    @current_user_id.present?
  end
end
