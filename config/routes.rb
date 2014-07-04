Rails.application.routes.draw do

  resources :books

  resources :users

  get 'books/:book_id/borrow', to: 'lendings#borrow', as: 'borrow'

  get 'books/:book_id/return', to: 'lendings#return', as: 'return'

  root 'books#index'

end
