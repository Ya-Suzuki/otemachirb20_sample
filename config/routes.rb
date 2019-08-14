Rails.application.routes.draw do
  resources :inquiries, only: %i[new create]
  resources :inquiry_confirmations, only: %i[new create]
  resources :users, only: %i[new create]
end
