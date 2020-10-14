Rails.application.routes.draw do
  resources :restaurants do
    # Everthing inside starts with /restaurants
    collection do
    # Verb + path
      get :top
      # get 'top', to: 'restaurants#top', as: :top_restaurants
    end

    member do
      # Verb + path
      get :chef
      # get ':id/chef', to: 'restaurants#chef', as: :chef_restaurants
    end

    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
