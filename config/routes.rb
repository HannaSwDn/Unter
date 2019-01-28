Rails.application.routes.draw do

  root controller: :hello_world, action: :index

  resources :hello_world, only: [:index, :create]
  
end
