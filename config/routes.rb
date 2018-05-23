Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  post 'users/sign_up' => 'users#sign_up'
  get 'my_user' => 'users#my_user'

  resources :recipes do
    resources :ingredients
  end

  resources :users do
    resources :recipes
  end

  resources :recipes

  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
