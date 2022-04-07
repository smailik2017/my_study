$counter = 0

Rails.application.routes.draw do
  get 'counter', to: 'counter#index', as: 'counter_index'
  get 'about', to: 'about#index', as: 'about_index'
  get 'help', to: 'help#index', as: 'help_index'
  # get 'events', to: 'events#index', as: 'root'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'events#index'
end
