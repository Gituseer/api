Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :users

  # get/users/ to: users#index
  # get/users/ :id to users#show
  # post /users/ to users#create
  # put /users/ :id to users#update
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
