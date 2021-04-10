Rottenpotatoes::Application.routes.draw do
  resources :fluffys
  # map '/' to be a redirect to '/fluffy'
  root :to => redirect('/fluffys')
  get '/fluffys/:id/get_rewards', to: 'fluffys#get_rewards', as: 'get_rewards'
  get '/fluffys/:id/reset_rewards',  to: 'fluffys#reset_rewards', as: 'reset_rewards'
  get '/qrcode', to: 'foo#get_qrcode', as: 'get_qrcode'
  
  get '/qrcodescan', to: 'foo#redirecting_action', as: 'redirecting_action'
  
  get '/fluffys/recommend/:id/:password', to: 'fluffys#recommend', as: 'recommend'
  get '/fluffys/new',  to: 'fluffys#create', as: 'to_create'
  
  get 'fluffys/user/:id/:password', to: "fluffys#user", as: 'user'
  
  get 'fluffys/:id/login', to: "fluffys#login", as: 'to_login'
    
  get '/fluffys/pay/:id/:password/:budget', to: 'fluffys#pay', as: 'pay'
end
