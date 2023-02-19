Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :spots do
        resources :reviews, only: [:index, :create]
      end
      resources :reviews, only: [:update, :destroy]
    end
  end
end
