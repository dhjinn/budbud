class Admin::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_up, keys: [:club_name, :email, :password, :password_confirmation, :balance])
    permit(:sign_in, keys: [:email, :password])
    permit(:account_update, keys: [:club_name, :email, :password, :password_confirmation, :balance])
  end
end