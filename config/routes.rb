Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :goals do
  	resources :trades
  end

end
