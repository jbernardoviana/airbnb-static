Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'flats#index'
  #get '/', to: 'flats#...'

  get 'flats/:id', to: 'flats#show', as: 'flat'

  #localhost:3000/flats/1
  #localhost:3000/flats/2
  #localhost:3000/flats/3

  #instagram/u/3293829
end
