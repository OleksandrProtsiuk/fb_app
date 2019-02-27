Rails.application.routes.draw do

  root 'static_page#index', as: 'root'

  get 'static_page/index'
  get 'static_page/home', as: 'home'
  get 'static_page/about', as: 'about'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :templates
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
