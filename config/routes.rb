Rails.application.routes.draw do
  resources :cows
  resources :vet_officers
  resources :farmers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
