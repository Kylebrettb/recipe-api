Rails.application.routes.draw do
  root 'sessions#welcome'
  	get 'login', to: 'sessions#new'
  	post 'login', to: 'sessions#create'
  	get 'welcome', to: 'sessions#welcome'
  	get 'recipes', to: 'recipes#index'
  	get '/recipes/:id', to: 'recipes#show', as: 'recipe'
  	get 'favorites' , to: 'favorites#new', as: 'new_favorite'
  	post 'favorites' , to: 'favorites#create'
    get 'genres', to: 'genres#index'
  	get '/genre/:id', to: 'genre#show', as: 'genre'
    get 'courses', to: 'courses#index'
  	get '/course/:id', to: 'course#show', as: 'course'
  	delete 'logout', to: 'sessions#destroy'
  	get '/auth/facebook/callback' => 'sessions#create'
  	resources :reviews
    resources :users, only: [:new, :create]






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
