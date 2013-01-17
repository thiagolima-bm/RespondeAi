Duvidas::Application.routes.draw do

  mathjax 'mathjax'

  resources :solution_steps

  resources :exercises

  resources :chapters

  resources :books

  root to: "questions#index"
  resources :questions, only: [:index, :new, :create]

  match "/login" => "questions#login"
  match "/logout" => "questions#logout"
  match "/about" => "questions#about"

  # For using with omniauth facebook
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
  
end
