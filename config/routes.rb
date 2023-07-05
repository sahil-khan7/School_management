Rails.application.routes.draw do
  # get 'books/index'
  # get 'books/show'
  # get 'books/new'
  # get 'books/create'
  # get 'books/edit'
  # get 'books/update'
  # get 'books/destroy'
  namespace :management do
    resources :students
    resources :teachers
    resources :admins
    resources :books
    
    root to: "admins#index"
  end
  # get 'user/index
  # devise_for :teachers
  # devise_for :students
  # resources :admins
  # devise_for :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "user#index"
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }
  devise_for :teachers, controllers: {
    sessions: 'teachers/sessions',
    registrations: 'teachers/registrations'
  }
  devise_for :students, controllers: {
    sessions: 'students/sessions',
    registrations: 'students/registrations'
  }

  # Defines the root path route ("/")
 
end
