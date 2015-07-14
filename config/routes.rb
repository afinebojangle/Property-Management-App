Rails.application.routes.draw do


  devise_for :users

  get 'home' => 'welcome#home'
  get 'about' =>  'welcome#about'
  get 'index' =>  'welcome#index'

  resources :properties do
    resources :units
  end

  resources :leases

  root to: 'welcome#home'

end
