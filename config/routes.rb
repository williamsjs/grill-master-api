Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  post 'users/sign_up' => 'users#sign_up'
  get 'users/show' => 'users#show'

  resources :recipes do
    resources :ingredients
  end

  resources :users do
    resources :recipes
  end

  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
