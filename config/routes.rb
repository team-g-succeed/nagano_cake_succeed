Rails.application.routes.draw do
  devise_for :customers
  get 'items/index'
  get 'items/show'
  root to: 'homes#top'
  get 'homes/about'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
