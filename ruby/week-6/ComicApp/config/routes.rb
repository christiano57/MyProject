Rails.application.routes.draw do
  devise_for :users
  get '/' => "comics#home"
end
