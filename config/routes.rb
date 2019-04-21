Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'
  
  get '/signup' => 'user#new'
  post '/:username' => 'user#create'

  get '/:username' => 'user#folders'

  get '/:username/search' => 'user#search'

  get '/:username/profile' => 'user#profile'

  get '/:username/newpage' => 'pages#new'
  post '/:username/:pagename' => 'pages#create'

  get '/:username/:pagename' => 'pages#view'

  get '/:username/:pagename/edit' => 'pages#edit'
  post '/:username/:pagename' => 'pages#update'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
