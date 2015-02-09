Rails.application.routes.draw do

root 'urls#index'

resources :urls, only: [:create]
resources :urls, path: "", param: :slug, only: [:show]

end
