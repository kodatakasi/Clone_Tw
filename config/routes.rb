Rails.application.routes.draw do
  resources :whispers
  
  get '/', to: 'whispers#top'
  get '/top', to: 'whispers#top'
end
