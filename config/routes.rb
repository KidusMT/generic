Rails.application.routes.draw do
  resources :countries
  
  get 'xxxx', controller: :countries, action: :xxx
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
