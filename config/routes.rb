Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  root to: "homes#top"

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

   resources :post_images, only: [:new, :create, :index, :show, :destroy]
   resources :post_images, only: [:show, :edit]

   get "homes/about" => "homes#about", as: "about"
end
