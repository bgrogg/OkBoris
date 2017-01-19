Rails.application.routes.draw do
  root to: 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :show, :update, :index]
    resource :session, only: [:create, :destroy]
    resources :questions, only: [:index, :create, :destroy]
    resources :responses, only: [:create, :show, :index, :update, :destroy]
  end

end
