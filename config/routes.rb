Rails.application.routes.draw do
  # get 'with_db/index'
  resources :with_db
  resources :no_db

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
