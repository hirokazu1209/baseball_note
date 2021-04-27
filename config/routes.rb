Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'tops#index' 
  resources :records, only: [:index, :new, :create, :show]
  resources :articles do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
