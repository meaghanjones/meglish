Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'static_pages/home'
  get 'static_pages/about'

  root :to => 'courses#index'

  devise_for :users

  resources :users
  resources :locations

  resources :courses do
    resources :lessons
  end

  resources :categories
end
