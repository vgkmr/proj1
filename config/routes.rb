Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch "capture", to: "pokemons#capture"
  post "damage/:id", to: "pokemons#damage", as: "damage"
  post "pokemons/create", to: "pokemons#create", as: "pokemons"
  get "pokemons/new", to: "pokemons#new"
end
