BenevitasMvp::Application.routes.draw do
 
  resources :medication_request do
  	get 'confirm'
  	put 'confirm'
  end

  devise_for :admins

  devise_for :users

  root :to => "medication_request#index"

end
