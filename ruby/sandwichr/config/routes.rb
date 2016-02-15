Rails.application.routes.draw do
  resources :ingredients
  resources :sandwiches, except: [:new, :edit]
  resources :sandwichingredients
  post '/sandwiches/:id/ingredients/add', to: "sandwiches#add_ingredients" 
end
