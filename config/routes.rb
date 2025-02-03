Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations',  sessions: 'users/sessions'  }
  root to: 'home#index'
    get 'dashboard', to: 'dashboard#index', as: 'dashboard'

    devise_scope :user do
      get "/users/sign_out", to: "users/sessions#destroy"
    end
end