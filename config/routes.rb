Rails.application.routes.draw do

  namespace :admin do
    resources :users
    resources :songs

    root to: "users#index"
  end

  devise_for :users, :controllers => { sessions: 'sessions', registrations: 'registrations'}
  resources :songs
  root to:'songs#index'


end