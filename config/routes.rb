Duvidas::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

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

end
