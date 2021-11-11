Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # routes for lists
  resources :lists, only: %i[index new create show] do
    # routes for bookmarks
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: :destroy
end
