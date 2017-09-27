Rails.application.routes.draw do
  get 'animals/:id', to: 'animals#show'

  get 'animals', to: 'animals#index'

  post 'animals', to: 'animals#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
