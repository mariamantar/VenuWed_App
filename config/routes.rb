Rails.application.routes.draw do
  get 'checkout/new'
  resources :venue_listings
  resources :venue_listings, except: [:edit] do
  end
  resources :companychecks, only: [:show]
  resources :companies
  resources :customers
  resources :charges
  get 'pages/home'
  devise_for :users
  root 'welcome#page'

  get 'search' => 'welcome#search'


# resources :photos, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
