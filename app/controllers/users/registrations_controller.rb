class Users::RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_user!
  before_filter :configure_sign_up_params, only: [:create]
  before_filter :configure_account_update_params, only: [:update]

  def new
    super
  end

  def create
    super
  end

  def edit
    super
  end

  def update
    super
  end

  def destroy
    super
  end

  protected
  def configure_sign_up_params
    devise_parameter_sanitizer.for(:sign_up) << [:name, :is_female,
                                                  :avatar, :date_of_birth]
  end

  def configure_account_update_params
    devise_parameter_sanitizer.for(:account_update) << [:name, :is_female,
                                                      :avatar, :date_of_birth]
  end

  def after_sign_up_path_for(resource)
    super(resource)
  end

  def after_inactive_sign_up_path_for(resource)
    super(resource)
  end
end
