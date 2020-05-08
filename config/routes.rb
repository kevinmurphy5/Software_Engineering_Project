Rails.application.routes.draw do
  get 'static_pages/welcome'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: redirect('/welcome', status: 302)
  get 'welcome', to: 'static_pages#welcome', as: 'welcome'
  get 'index', to: 'static_pages#index', as: 'index'

  get 'auctions', to:'auctions#index', as: 'auctions'
  get 'auctions/:id', to:'auctions#details', as: 'auction'
end
