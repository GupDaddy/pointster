Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
  namespace :director do
  	resources :games, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  	resources :players, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  	resources :courses, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  	resources :tours, only: [:index, :new, :create, :show]
  end
end
