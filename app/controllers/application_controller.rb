class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :club_name, :email, :password, :password_confirmation, :balance])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :club_name, :email, :password, :password_confirmation, :balance])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :club_name, :email, :password, :password_confirmation, :balance])
  end
  # def devise_parameter_sanitizer
  #   if resource_class == User
  #     User::ParameterSanitizer.new(User, :user, params)
  #   elsif resource_class == Adnim
  #     Admin::ParameterSanitizer.new(Admin, :admin, params)
  #   else
  #     super
  #   end
  # end
end
