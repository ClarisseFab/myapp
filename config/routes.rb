Rails.application.routes.draw do
  devise_for :users
  
  resources :poules do
    collection do
      get 'generate'
    end
  end
  
  resources :equipes do
    collection do
      get 'test'
    end
  end
  # get 'home/index'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  # your routes here...
  end
end
