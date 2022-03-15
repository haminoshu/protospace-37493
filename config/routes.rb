Rails.application.routes.draw do
  devise_for :users
  root to: "avatars#index"
  get 'avatars', to: 'avatars#index'

  resources :avatars do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
