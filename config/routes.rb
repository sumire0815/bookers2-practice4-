Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }
  get "home/about"=>"homes#about"
  resources :users
  resources :books
  root :to =>"homes#top"
end
