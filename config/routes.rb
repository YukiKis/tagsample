Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  delete "delete_tag/:id", to: "users#delete_tag", as: "delete_tag"
  get "tag_relateg/:tag", to: "users#tag_show", as: "tag_show"
end
