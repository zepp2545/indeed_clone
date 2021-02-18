Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'jobs', to: 'jobs#search'
      resources :applications, only: [:create]
    end
  end
end
