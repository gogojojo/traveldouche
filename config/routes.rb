Rails.application.routes.draw do
  root 'trips#index'
  resources :trips
  get '/search' => 'trips#search', as: :search
end
