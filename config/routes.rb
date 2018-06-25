Rails.application.routes.draw do

  devise_for :users
  resources :songs
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to:'songs#index'

end