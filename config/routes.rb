Rails.application.routes.draw do
  get '/square/new', to: 'forms#home'
  get '/square_root/new', to: 'forms#square_root'
  get '/payment/new', to: 'forms#payment'
  get '/random/new', to: 'forms#random'

  get '/square/results', to: 'results#square'
  get  '/square_root/results', to: 'results#square_root'
  get '/payment/results', to: 'results#payment'
  get '/random/results', to: 'results#random'
end
