Rails.application.routes.draw do

  root 'welcome#index'

  resources :sessions, only: [:create]

  resources :users do
    resources :favorites
  end



  resources :trees do
    resources :favorites
  end



# Some specified custom routes:

  get '/search' => 'trees#search'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  delete '/logout' => 'sessions#destroy'

end
