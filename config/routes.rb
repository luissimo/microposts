Rails.application.routes.draw do
  resources :users

  get 'users/new'

  root              'static_pages#home'
  get 'help' =>     'static_pages#help'
  get 'about' =>    'static_pages#about'
  get 'contact' =>  'static_pages#contact'
  get 'signup' =>   'users#new'

end


# heroku --> https://obscure-brushlands-95895.herokuapp.com/ | https://git.heroku.com/obscure-brushlands-95895.git

