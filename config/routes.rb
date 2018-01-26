Rails.application.routes.draw do
  resources :items

  namespace :api, defaults: { format: 'json' } do
    resources :items, only: :index
  end
end
