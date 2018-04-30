class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  # before_action :get_current_user, except: [:authenticate_user!] 

  def get_current_user
  	ActsAsTenant.current_tenant = current_user
  end
end
