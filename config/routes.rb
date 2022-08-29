Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :dungeons, except: [:create, :edit, :update, :destroy] do
    resources :bookings, only: :index
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
