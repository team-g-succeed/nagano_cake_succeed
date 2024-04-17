Rails.application.routes.draw do
  devise_for :customers
  get 'items/index'
  get 'items/show'
  root to: 'homes#top'
  get '/about' => 'homes#about'
  devise_for :users
  
  namespace :admin do
   resources :items, only: [:index, :show, :new, :create, :edit, :update]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
