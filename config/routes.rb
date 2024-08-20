Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Routes pour les utilisateurs
  resources :users, only: %i[show] do
    resources :user_job_searches, only: %i[edit update] # Ajouté pour les user_job_searches
    collection do
      get :my_candidacies
    end
  end

  resources :offers, only: %i[show new create] do
    resources :candidacies, only: %i[create]
    resources :matches, only: %i[index]
  end

  resources :candidacies, only: %i[show] do
    resources :chatrooms, only: %i[show]
  end

  resources :matches, only: %i[index]

  resources :chatrooms, only: %i[index show] do
    resources :messages, only: %i[create]
  end
end
