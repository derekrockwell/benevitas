BenevitasMvp::Application.routes.draw do

 
  resources :medication_request

  devise_for :admins

  devise_for :users

  root :to => "medication_request#index"


end
