Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'api/v1/cats/random' => 'api/v1/cats#random'
  get 'api/v1/dogs/random' => 'api/v1/dogs#random'
  namespace :api do
    namespace :v1 do
      resources :dogs
      resources :cats
    end
  end
end
