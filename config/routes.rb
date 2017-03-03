Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
 
  get 'home/index'

  devise_for :users
	root to: "home#index"

resources :blogs do
  resources :comments
end

namespace :admin do
    resources :blogs
    resources :comments
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
