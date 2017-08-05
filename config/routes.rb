Rails.application.routes.draw do
  root 'home#index'
  resources :articles
  resources :settings, only: [:index, :update] do
    collection do
      post :default
    end
  end
  devise_for :users
  get 'about', to: 'pages#about'
  get 'filtered_articles', to: 'pages#filtered_articles'
end
