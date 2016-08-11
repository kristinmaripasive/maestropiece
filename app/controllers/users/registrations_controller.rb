class Users::RegistrationsController < Devise::RegistrationsController
# before_action :configure_sign_up_params, only: [:create]
# before_action :configure_account_update_params, only: [:update]

def update
  set_flash_message :notice, :"message here" if is_flashing_format?
  session[:user_return_to] = url
  super
end

protected

def after_update_path_for(resource)
  user_path(resource)
end

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # # POST /resource
  # def create
  #   if params[:user][:artist_box].to_i > 0
  #      params[:user][:artist_box] = true
  #   else
  #     params[:user][:artist_box] = false
  #   end
  #
  #   if params[:user][:music_box].to_i > 0
  #      params[:user][:music_box] = true
  #   else
  #     params[:user][:music_box] = false
  #   end
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  private
  def sign_up_params
    params.require(:user).permit( :email, :password, :password_confirmation, :music_box, :artist_box)
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up) do |user_params|
  #     user_params.permit(:email, :password, :artist_box, :music_box)
  #   end
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end