Rails.application.routes.draw do
  root to: "pages#index"
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get "agenda" => "pages#agenda"

  get "home" => "pages#home"

  get "mailbox" => "pages#mailbox"
  # get 'pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
