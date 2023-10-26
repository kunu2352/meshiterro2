Rails.application.routes.draw do
  
  
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create]
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#top"
  get 'home/about' => 'home#about', as: :about
  resources :users, only: [:show, :edit, :update]
end
