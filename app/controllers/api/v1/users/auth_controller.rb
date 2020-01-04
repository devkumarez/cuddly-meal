class Api::V1::Users::AuthController < Api::V1::BaseController

  def social_login
    params = provider_params.to_hash
    @current_user = User.create_from_provider_data(params)
    if @current_user.persisted?
      render :create, status: :ok
    else
      render json: { errors: 'There was a problem signing you in through #{params["provider"].titleize}. Please register or try signing in later.'}, status: :unprocessable_entity
    end 
    
  end

  private

  def provider_params
    params.require(:user).permit(:id, :name, :email, :photoUrl, :firstName, :lastName, :provider)
  end

end
