Rails.application.routes.draw do
  get "/reports", to: "reports#new"
  get "/reports/show/id", to: "reports#show"
  root to: "reports#show"
  resources :projects
  
  devise_for :users, controllers: {
        sessions: 'users/sessions'}
        
      resources :reports, except: [:edit]
    
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
