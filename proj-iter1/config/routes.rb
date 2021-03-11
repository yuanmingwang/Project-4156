Rottenpotatoes::Application.routes.draw do
  resources :fluffys
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/fluffys')
  get '/fluffys/:id/get_rewards', to: 'fluffys#get_rewards', as: 'get_rewards'
end
