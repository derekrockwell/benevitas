BenevitasMvp::Application.routes.draw do

 
  resources :medication_request do
  	put 'confirm'
  	post 'confirm'
  	get 'confirm'
  end

  devise_for :admins

  devise_for :users

  root :to => "medication_request#index"


end
