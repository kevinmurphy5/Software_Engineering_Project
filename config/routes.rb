Rails.application.routes.draw do
  get 'static_pages/welcome'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: redirect('/welcome', status: 302)
  get 'welcome', to: 'static_pages#welcome', as: 'welcome'
  get 'auctions', to:'static_pages#auctions', as: 'auctions'
  
end
