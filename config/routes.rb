Rails.application.routes.draw do
  root to: "paintings#index"
  resources :paintings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
