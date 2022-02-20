Rails.application.routes.draw do
  resources :items, :users #do
  
  delete '/items/delete/:id', to: 'items#delete_attachment', as: 'delete_cover'
  #end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
