class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, only: [:create]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :company_name, :category, :role, :phone_number])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end
end
