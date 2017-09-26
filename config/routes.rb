Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except: [:show]
  get 'angular', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'
end
