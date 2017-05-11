Rails.application.routes.draw do

  resources :products

namespace :api do 
  resources :users, except: [:new, :edit]
end
  resources :users do 
  	collection do 
       get 'sign_in'
       post 'signup'
       delete 'logout'
  	end
  end
  root to: "products#index" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
