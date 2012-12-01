Duvidas::Application.routes.draw do
  resources :questions, only: [:index, :new, :create]
end
