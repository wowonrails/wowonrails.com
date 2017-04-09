Rails.application.routes.draw do
  get 'home/index'

  root to: 'home#index'

  resource :contacts, only: [:create]
end
