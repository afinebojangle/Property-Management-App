Rails.application.routes.draw do

  devise_for :users

  get 'home' => 'welcome#home'
  get 'about' =>  'welcome#about'
  get 'index' =>  'welcome#index'

  resources :properties

  root to: 'welcome#home'

end
