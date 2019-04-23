# == Route Map
#
# Prefix Verb   URI Pattern                         Controller#Action
#   root GET    /                                   pages#home
# signup GET    /signup(.:format)                   user#new
#        POST   /:username(.:format)                user#create
#        GET    /:username(.:format)                user#folders
#        GET    /:username/search(.:format)         user#search
#        GET    /:username/profile(.:format)        user#profile
#        GET    /:username/newpage(.:format)        pages#new
#        POST   /:username/:pagename(.:format)      pages#create
#        GET    /:username/:pagename(.:format)      pages#view
#        GET    /:username/:pagename/edit(.:format) pages#edit
#        POST   /:username/:pagename(.:format)      pages#update
#  login GET    /login(.:format)                    session#new
#        POST   /login(.:format)                    session#create
#        DELETE /login(.:format)                    session#destroy

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/signup' => 'users#new', as: 'new_user'
  post '/' => 'users#create'
  # TODO Change to go to created user page

  get '/:username' => 'users#folders', as: 'user'

  get '/:username/search' => 'users#search', as: 'search'

  get '/:username/profile' => 'users#profile', as: 'profile'

  get '/:username/newpage' => 'pages#new', as: 'new_page'
  post '/:username/:pagename' => 'pages#create'

  get '/:username/:pagename' => 'pages#view', as: 'view'

  get '/:username/:pagename/edit' => 'pages#edit', as: 'edit'
  post '/:username/:pagename' => 'pages#update'
end
