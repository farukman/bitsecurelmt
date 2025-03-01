Rails.application.routes.draw do
  get "about", to: "home#about", as: "about"
  get "pages/contact"
  devise_for :users, controllers: { registrations: 'users/registrations',  sessions: 'users/sessions'  }
  root to: 'home#index'
    get 'dashboard', to: 'dashboard#index', as: 'dashboard'
    get 'signup', to: 'home#signup'

    devise_scope :user do
      get "/users/sign_out", to: "users/sessions#destroy"
    end
end