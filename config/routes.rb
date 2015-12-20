Rails.application.routes.draw do
  
     devise_for :users, controllers: {registrations: 'registrations'}
  root 'pages#home'
  get 'dashboard', to: "pages#dashboard"
    
    resources :trips, path_names: {edit: 'details' }
        
        
        resources :trips do
    resources :status_times
  end
  
  
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'user' => 'devise/passwords#edit'


  

  
  


end
