Rottenpotatoes::Application.routes.draw do
  resources :fluffys
  resources :charges

  # map '/' to be a redirect to '/fluffy'
  root :to => redirect('/fluffys')
  get '/fluffys/:id/get_rewards', to: 'fluffys#get_rewards', as: 'get_rewards'
  get '/fluffys/:id/reset_rewards',  to: 'fluffys#reset_rewards', as: 'reset_rewards'
  get '/qrcode', to: 'foo#get_qrcode', as: 'get_qrcode'
  
  get '/qrcodescan', to: 'foo#redirecting_action', as: 'redirecting_action'
    
  get '/fluffys/:id/get_recommend', to: 'fluffys#get_recommend', as: 'get_recommend'
  
  get '/charges', to: 'charges#create', as: 'get_charges'

    
    
end
