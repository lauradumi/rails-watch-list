Rails.application.routes.draw do
  # resources :lists, only: [:create, :index, :show, :new]
  resources :lists do
    resources :bookmarks, only:[:new, :create, :show, :destroy]
  end
end
