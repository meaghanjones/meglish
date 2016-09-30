Rails.application.routes.draw do
  resources :skills
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'static_pages/about'

  root :to => 'courses#index'

  devise_for :users

  resources :users
  resources :locations

  resources :courses do
    resources :lessons
  end

  resources :categories
  resources :skills
end
