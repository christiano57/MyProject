Rails.application.routes.draw do
get '/' => "users#home"
  devise_for :users
  resources :concerts do
    resources :comments
  end
end
