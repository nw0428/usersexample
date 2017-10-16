Rails.application.routes.draw do
  devise_for :owners
  root to: "paintings#index"
  resources :paintings do
    resources :comments
  end

  get 'dashboard', to: 'dashboards#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
