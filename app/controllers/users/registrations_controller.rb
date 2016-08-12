class Users::RegistrationsController < Devise::RegistrationsController
before_action :configure_sign_up_params, only: [:create]
# before_action :configure_account_update_params, only: [:update]




protected
  # The path used after sign up.
  def after_sign_up_path_for(resource)
    main_path(resource)
  end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
