Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # all
  get "tasks", to: "tasks#index"
  # create one task
  get "tasks/new", to: "tasks#new", as: :new
  post "tasks", to: "tasks#create"
  # show one taks
  get "tasks/:id", to: "tasks#show", as: :task
  # update
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"
  # delete
  delete "tasks/:id", to: "tasks#destroy"
end
