Rails.application.routes.draw do
  resources :users

  resources :items do
    member do
      delete 'delete_attachment', to: 'items#delete_attachment', as: 'delete_cover'
      delete 'upload', to: 'items#delete_upload', as: 'delete_upload'
    end
  end
  
end
