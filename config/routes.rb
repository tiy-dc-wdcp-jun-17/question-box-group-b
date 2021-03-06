Rails.application.routes.draw do
  get 'results/new'

  get 'results/create'

  get 'results/edit'

  get 'results/index'

  root to: 'sessions#new'

  resources :questions do
    resources :answers
  end

  resources :results, only: [:index]

  resource :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
