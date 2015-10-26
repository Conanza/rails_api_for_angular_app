Rails.application.routes.draw do
  root to: 'static_pages#root'
  match 'hello', to: 'static_pages#hello', via: 'get'

  namespace :v1, defaults: { format: :json } do
    resources :names, only: [:index, :create, :update, :destroy]
  end
end
