Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check

  resources :users, only: %i[show index] do
    member do
      post :swipe_left # Route pour swipe gauche
      post :swipe_right # Route pour swipe droite
    end
    collection do
      get :swipe
    end
  end

  delete "matches/:id", to: "matches#destroy", as: :destroy_match

  resources :users, only: %i[show]
  resources :user_job_searches, only: %i[new update create]

  resources :user_job_searches, only: %i[show] do
    resources :matches, only: %i[index]
  end

  resources :offers, only: %i[index show new create] do
    resources :candidacies, only: %i[create]
    resources :matches, only: %i[index]
  end

  post 'candidacies/:id/accept', to: 'candidacies#accept', as: 'accept_candidacy'
  post 'candidacies/:id/refuse', to: 'candidacies#refuse', as: 'refuse_candidacy'

  resources :candidacies, only: %i[show] do
    collection do
      get :my_candidacies
    end
  end

  resources :chatrooms, only: %i[index show] do
    resources :messages, only: %i[create]
  end
end
