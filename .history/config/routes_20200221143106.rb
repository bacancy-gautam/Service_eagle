Rails.application.routes.draw do

  root to: "home#index"
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
    
  }
  get 'companies/new', to: 'companies#new'
  post 'companies', to: 'companies#create'
  get 'companies/updatecompany', to: 'companies#update'  
  get 'servicecenters/new', to:'service_centers#new'
  post 'servicecenters', to: 'service_centers#create'
  get 'admin/new', to: 'super_admin#method'
end
