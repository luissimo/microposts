Rails.application.routes.draw do
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]

  root                'static_pages#home'
  get 'help' =>       'static_pages#help'
  get 'about' =>      'static_pages#about'
  get 'contact' =>    'static_pages#contact'
  get 'signup' =>     'users#new'
  get 'login' =>      'sessions#new'
  post 'login' =>     'sessions#create'
  delete 'logout' =>  'sessions#destroy'

end

# heroku --> https://obscure-brushlands-95895.herokuapp.com/ | https://git.heroku.com/obscure-brushlands-95895.git

