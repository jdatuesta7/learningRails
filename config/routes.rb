Rails.application.routes.draw do
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/welcome", to: "home#index"
  
  get "/contacts", to: "contacts#index" 
  get "contacts/new", to: "contacts#new"
  post "contacts", to: "contacts#store"
  get "contacts/:id", to: "contacts#show"
  get "contacts/:id/edit", to: "contacts#edit"
  patch "contacts/:id", to: "contacts#update", as: :contact
  delete "contacts/:id", to: "contacts#destroy"
end
