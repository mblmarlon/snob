Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Attachinary::Engine => "/attachinary"
  resources :items
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get "profile/:id", to: "profiles#profile", as: 'profile'
  get "your_profile/:id", to: "profiles#current_profile", as: 'your_profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

