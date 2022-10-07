Rails.application.routes.draw do
 
  root "users#index"
  patch "comments/create"
  resources :users do
   resources :comments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
end
