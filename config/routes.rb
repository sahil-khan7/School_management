Rails.application.routes.draw do
  # get 'user/index'
  # devise_for :teachers
  # devise_for :students
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
