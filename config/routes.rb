Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  get 'home/about' => 'homes#about'
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy] do
    resources :favorites, only: [:create, :destroy]
  end
  resources :users, only: [:index, :show, :edit, :update]
end
