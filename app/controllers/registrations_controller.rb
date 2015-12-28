class RegistrationsController < Devise::RegistrationsController
 def index
 
 end
 private
  def sign_up_params
  	params.require(:user).permit(:firstname, :lastname, :date_of_joining, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:firstname, :lastname, :date_of_joining, :email, :password, :password_confirmation, :current_password)
  end

end