class Users::RegistrationsController < Devise::RegistrationsController

  def create
    super
    @user.acctag = rand.to_s[2..6]
    @user.save
  end

  protected

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
  end
end
