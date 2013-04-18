Malarkey::Application.routes.draw do
  root :to => 'home#index'
  resources :users, :games
  resources :cards, :only => [:index]
end
