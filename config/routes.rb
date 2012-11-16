UrlShortener::Application.routes.draw do
  root to: 'shorteners#index'
  resources :shorteners

  match '/:short_url' => 'redirect#go'
end
