Rails.application.routes.draw do
  get 'static_page/index'
  get 'static_page/home'
  get 'static_page/about'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root 'templates#index', as: 'root'

  resources :templates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
