Rails.application.routes.draw do
  get '/contacts' => "contacts#index"
  get '/contacts/form' => "contacts#new"
  post("/contacts", :to => "contacts#create")
end
