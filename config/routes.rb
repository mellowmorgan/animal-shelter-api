Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'cats/api/v1/random' => 'api/v1/cats#random'
  get 'dogs/api/v1/random' => 'api/v1/dogs#random'
  namespace :api do
    namespace :v1 do
      resources :dogs
      resources :cats
    end
  end
end
