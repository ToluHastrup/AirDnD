Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :dungeons, except: [:edit, :update, :destroy] do
    resources :bookings, except: [:edit, :update, :destroy, :show]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
