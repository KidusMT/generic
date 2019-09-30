Rails.application.routes.draw do
  resources :countries

  resources :crews do
    # member do
    #   get 'clock_times', controller: :clock_times, action: :index
    # end
  end
  # get 'clock_times', controller: :clock_times, action: :index
  # /crews/5/clock_times
  post 'update_or_create', controller: :countries, action: :update_or_create


  resources :clock_times
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
