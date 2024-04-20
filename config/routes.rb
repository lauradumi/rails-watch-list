Rails.application.routes.draw do
  # resources :lists, only: [:create, :index, :show, :new]
  root "lists#index"

  resources :lists, except: :index do
    resources :bookmarks, only:[:new, :create, :show, :destroy]
  end
end
