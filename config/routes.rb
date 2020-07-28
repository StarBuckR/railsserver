Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, defaults: { format: :json } do
    post 'users', to: 'users#create'
    get 'users', to: 'users#index'
  end

  constraints format: :json do
    post 'notifications', to: 'notifications#create'
    post 'notifications/get', to: 'notifications#get_all'
    delete 'notifications', to: 'notifications#delete'
  end
end
