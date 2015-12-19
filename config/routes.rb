Rails.application.routes.draw do
  
    devise_for :users
    
    resources :trips, path_names: {edit: 'details' }
    
    resources :trips do
    resources :status_times
  end
  
  
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'

  root 'pages#home' 
  

  
  


end
