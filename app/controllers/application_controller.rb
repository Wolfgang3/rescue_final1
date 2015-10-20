class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) << :avatar
    devise_parameter_sanitizer.for(:account_update) << :avatar
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:sign_up) << :phno
    devise_parameter_sanitizer.for(:account_update) << :phno
    devise_parameter_sanitizer.for(:sign_up) << :role
    devise_parameter_sanitizer.for(:account_update) << :role
    devise_parameter_sanitizer.for(:sign_up) << :specialized
    devise_parameter_sanitizer.for(:account_update) << :specialized
    devise_parameter_sanitizer.for(:sign_up) << :reference_code
    devise_parameter_sanitizer.for(:account_update) << :reference_code
    devise_parameter_sanitizer.for(:sign_up) << :referred_by
    devise_parameter_sanitizer.for(:account_update) << :referred_by
  end
end
