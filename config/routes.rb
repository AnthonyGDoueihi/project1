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

  resources :users, :only => [:create, :update]
  resources :tags, :only => [:create, :destroy]
  resources :glossaries, :only => [:create, :destroy]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/signup' => 'users#new', as: 'new_user'

  get '/:urlname' => 'users#folders', as: 'folder'

  get '/:urlname/search' => 'users#search', as: 'search'

  get '/:urlname/profile' => 'users#profile', as: 'profile'

  get '/:urlname/profile/edit' => 'users#edit', as: 'profile_edit'

  post '/:urlname/profile/edit' => 'users#update'

  get '/:urlname/newpage' => 'pages#new', as: 'new_page'
  post '/:urlname/:pagename' => 'pages#create'

  get '/:urlname/:pagename' => 'pages#view', as: 'view'

  get '/:urlname/:pagename/edit' => 'pages#edit', as: 'edit'
  post '/:urlname/:pagename' => 'pages#update'

end
