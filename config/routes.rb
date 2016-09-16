Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/about'

  root :to => 'courses#index'

  devise_for :users
  resources :users do
    resources :courses
  end

  resources :courses do
    resources :lessons
  end

  resources :categories
end
