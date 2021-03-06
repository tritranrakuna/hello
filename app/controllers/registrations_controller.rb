class RegistrationContrller < Devise::RegistrationsController

    private
    
    def sign_up_params
        params.require(:user).permit(:name, :username, :email, :password, :password_comfirmation)
    end

    def account_update_params
        params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :current_password)
    end
end
