UrlShortener::Application.routes.draw do
  
  devise_for :users
  root to: 'shorteners#index'
  resources :shorteners, :only => [:show, :create, :show]
  get '/:short_url' => 'shorteners#show'

  # get 'login' => "sessions#new", :as => 'login'
  # get 'logout' => 'session#destroy', :as => 'logout'
  # resources :users
  # resources :sessions
  # match '/sign_up' => 'users#new', :as => :sign_up
end
