Rails.application.routes.draw do
  namespace :api do
    resources :locations, only: [:create, :index] do
      resources :parkings
    end

    resources :parking_spaces

    resources :users, only: :index

    resources :book_parking_space, only: :create
  end
end
