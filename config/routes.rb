Rails.application.routes.draw do
  resources :skills
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'static_pages/about'

  root :to => 'courses#index'

  devise_for :users

  # resources :users
  resources :locations, only: :index


  resources :courses do
    resources :lessons
  end

  resources :categories
  resources :skills

  match '/contacts',     to: 'contacts#new',            via: 'get'
  resources "contacts", only: [:new, :create]
end
