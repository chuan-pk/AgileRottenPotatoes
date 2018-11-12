Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :movies do
    resources :reviews
  end

  root :to => "movies#welcome"
  get 'auth/:provider/callback' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  get 'auth/failure' => 'sessions#failure'
  get 'auth/facebook', :as => 'login_facebook'
  get 'auth/github', :as => 'login_github'
  post 'search_tmdb' => 'movies#search_tmdb'
end
