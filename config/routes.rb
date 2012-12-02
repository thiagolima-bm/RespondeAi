Duvidas::Application.routes.draw do
  root to: "questions#index"
  resources :questions, only: [:index, :new, :create]
  match "/login" => "questions#login"
  match "/logout" => "questions#logout"
end
