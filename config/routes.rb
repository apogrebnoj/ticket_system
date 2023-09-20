Rails.application.routes.draw do
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy]
  resources :tickets, only: [:new, :create, :edit, :update, :show, :destroy, :index]
   root 'sessions#new' # This sets the login page as the root page
  # Session routes
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'sessions/create'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
