# frozen_string_literal: true

Rottenpotatoes::Application.routes.draw do
  resources :movies do
    resources :reviews
  end
  # map '/' to be a redirect to '/movies'
  root to: redirect('/movies')

  get  'auth/:provider/callback' => 'sessions#create'
  get  'auth/failure' => 'sessions#failure'
  get  'auth/google_oauth2', as: 'login'
  post 'logout' => 'sessions#destroy'
end
