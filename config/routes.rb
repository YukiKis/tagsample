Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  delete "tag_delete/:id", to: "users#tag_delete", as: "delete_tag"
end
