Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root to: "tasks#index"
  #READ ALL
  get '/tasks', to: "tasks#index"


  get '/tasks/new', to: "tasks#new"
  #READ ONE
  get '/tasks/:id', to: "tasks#show", as: "task"


  #DELETE A TASK
  delete '/tasks/:id', to: "tasks#destroy"

  #CREATE A NEW TASK
  post '/tasks', to: "tasks#create"

  #UPDATE A TASK
  get '/tasks/:id/edit', to: "tasks#edit"
  patch '/tasks/:id', to: "tasks#update"




end
