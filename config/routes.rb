Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'cats/random' => 'cats#random'
  get 'dogs/random' => 'dogs#random'
  resources :dogs
  resources :cats
end
