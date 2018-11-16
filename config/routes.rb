Rails.application.routes.draw do
  root 'users#index'
  	devise_for :users, :paths => 'users'
	
	resources :users do
		resources :trips do
		        resources :checkins, only: :create
		  end
	end
end
