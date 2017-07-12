Rails.application.routes.draw do
  root 'static_pages#home'

  #get 'admin/index'


  devise_for :admins , :controllers => { registrations: 'registrations' }
  resources :cows
  resources :vet_officers
  resources :farmers
  #get 'static_pages#services'
  get '/services', to: 'static_pages#services'

  devise_scope :admin do
     get '/dashboard', to: 'cows#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
