Rails.application.routes.draw do
  get 'users/new'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/links" => 'links#create'
  get "/visitors" => 'visitors#show'
  get "/:lookup_code" => 'links#show'
end
