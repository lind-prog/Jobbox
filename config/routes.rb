Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :users, only: %i[show]
  resources :user_job_searches, only: %i[new update create]

  resources :offers, only: %i[index show new create] do
    resources :candidacies, only: %i[create]
    resources :matches, only: %i[index]
  end

  resources :candidacies, only: %i[show] do
    collection do
      get :my_candidacies
    end
  end

  resources :matches, only: %i[index]

  resources :chatrooms, only: %i[index show] do
    resources :messages, only: %i[create]
  end
end
