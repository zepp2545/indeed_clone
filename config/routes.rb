Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'jobs', to: 'jobs#search'
      get 'jobs/:id', to: 'jobs#show'
      resources :applications, only: [:create]
    end
  end
end
