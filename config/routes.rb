Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/new'
  get 'journalists/index'
  get 'journalists/new'

  post 'posts',    to:"posts#create"
  post 'journalists',    to:"journalists#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end
