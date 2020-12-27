Rails.application.routes.draw do
  resources :user_stocks
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #root 'pages#home'
  root 'welcome#index'
  get 'about', to: 'pages#about'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stock#search'
end

