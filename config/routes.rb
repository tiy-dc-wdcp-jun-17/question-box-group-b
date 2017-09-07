Rails.application.routes.draw do
  root to: 'questions#index'
  resources :users
  resources :questions
  resources :answers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
