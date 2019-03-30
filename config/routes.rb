Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'recipes#index'
  get  '/home',    to: 'recipes#index'
  get  '/about',   to: 'static_pages#about'
  # users routes
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  # sessions routes
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # recipes routes
  get  '/users/new-recipe',  to: 'recipes#new'
  post '/users/new-recipe',  to: 'recipes#create'
  get  '/users/show-recipes', to: 'users#recipe'
  
  resources :users, :recipes

  resources :recipes do 
    member do
      put "like", to: "recipes#upvote"
      put "dislike", to: "recipes#downvote"
    end
  end

  #put '/recipes/:id/:action', to: 'recipes#upvote'
  #put '/recipes/:id/:action', to: 'recipes#downvote'
  
end
