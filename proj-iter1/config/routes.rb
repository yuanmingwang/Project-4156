Rottenpotatoes::Application.routes.draw do
  resources :fluffys
  # map '/' to be a redirect to '/fluffy'
  root :to => redirect('/fluffys')
  get '/fluffys/:id/get_rewards', to: 'fluffys#get_rewards', as: 'get_rewards'
  get '/qrcode', to: 'foo#get_qrcode', as: 'get_qrcode'
  
  get '/qrcodescan', to: 'foo#redirecting_action', as: 'redirecting_action'

end
