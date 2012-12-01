Duvidas::Application.routes.draw do
  resouces :questions, only: [:index, :new, :create]
end
