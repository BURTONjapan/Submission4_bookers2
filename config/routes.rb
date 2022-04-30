Rails.application.routes.draw do
  devise_for :users
  root to: "home#top"
  resources :books, only: [:index, :show, :edit, :create, :destroy, :update]
  resources :users, only: [:show, :edit, :index, :update]
  get "home/about" => 'home#about', as: 'about'
  get "books/:id" => 'books#show', as: 'bookkwsk'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
