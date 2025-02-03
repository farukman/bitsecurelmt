class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index]

  def after_sign_in_path_for(resource)
    dashboard_path
  end


    def configure_permitted_parameters
      # Permit :username parameter during sign up and account update
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username])
    end
  
end