# frozen_string_literal: true

Rails.application.routes.draw do
  get resources :tasks

  # # List
  # get '/tasks', to: 'tasks#index'

  # # Create
  # get '/tasks/new', to: 'tasks#new', as: 'new_task'
  # post '/tasks', to: 'tasks#create'

  # # Detail
  # get '/tasks/:id', to: 'tasks#show', as: 'task'

  # # Update
  # get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # patch '/tasks/:id', to: 'tasks#update'

  # # Delete
  # delete 'tasks/:id', to: 'tasks#destroy'
end
