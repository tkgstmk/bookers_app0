Rails.application.routes.draw do
  # get 'books/index'
  # get 'books/show'
  # get 'books/new'
  # get 'books/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  # resources :homes
  get "homes/top"
  # post "books" => "books#create"
  # get "books/index", to: "books#index"
  # get "books/show", to: "books#show"
  # get "books/edit", to: "books#edit"
  
end
