Rails.application.routes.draw do
  resources :lists, only: [:create, :index, :show, :new]
end
