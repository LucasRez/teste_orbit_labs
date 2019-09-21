Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'events', controller: 'events', action: :index

  post 'comments', controller: 'comments', action: :create
  get 'comments', controller: 'comments', action: :index

  post 'reports', controller: 'reports', action: :create
end
