Rails.application.routes.draw do
  root :to => 'homes#top'
  resources :books do
    collection do
      get 'books/:id' => 'books#show'
      get 'books/:id/edit' => 'books#edit', as: 'edit_book'
      patch 'books/:id' => 'books#update', as: 'update_book'
      delete 'books/:id' => 'books#destroy', as: 'destroy_book'
    end
  end
end
