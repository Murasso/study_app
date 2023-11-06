Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  resources :users, only: [:index, :show, :edit]
  resources :study_records, only: [:new, :create, :index, :show]
  
  
  
  get "homes/about" => "homes#about", as: "about"
end
