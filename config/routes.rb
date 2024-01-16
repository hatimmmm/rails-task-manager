Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "tasks#home"
  # Defines the root path route ("/")
  # root "posts#index"
  get "tasks/:id", to: "tasks#show"
  delete "tasks/:id", to: "tasks#delete"
  post "create", to: "tasks#create"
  patch "tasks/:id", to: "tasks#update"

end
