Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  
  resources :study_records, only: [:new, :create, :index, :show]
  
  
  
  get "homes/about" => "homes#about", as: "about"
end
