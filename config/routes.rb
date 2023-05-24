Rails.application.routes.draw do
  resources :movies do
    resources :bookmarks, only: %i[index show create new]
  end

  resources :lists, only: %i[index show create new] do
    post 'add_movie', on: :member
  end

  resources :bookmarks, only: %i[index show create new]
end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

    # "delete 'restaurants/:id', to: 'restaurants#destroy'
    # get 'restaurants', to: 'restaurants#index'
    # patch 'restaurants/:id', to: 'restaurants#update'
    # post 'restaurants', to: 'restaurants#create'
    # get 'restaurants/new' to restaurants#new
    # get 'restaurants/:id/edit' to restaurants#edit_restaurant
    # get 'restaurants/:id' to restaurants#show"
