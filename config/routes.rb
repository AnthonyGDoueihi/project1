# == Route Map
#
#       Prefix Verb   URI Pattern                        Controller#Action
#         root GET    /                                  pages#home
#        users POST   /users(.:format)                   users#create
#         user PATCH  /users/:id(.:format)               users#update
#              PUT    /users/:id(.:format)               users#update
#         tags POST   /tags(.:format)                    tags#create
#          tag DELETE /tags/:id(.:format)                tags#destroy
#     glossary DELETE /glossaries/:id(.:format)          glossaries#destroy
#         node DELETE /nodes/:id(.:format)               nodes#destroy
#        login GET    /login(.:format)                   session#new
#              POST   /login(.:format)                   session#create
#              DELETE /login(.:format)                   session#destroy
#     new_user GET    /signup(.:format)                  users#new
#       folder GET    /:urlname(.:format)                users#folders
#  folder_edit GET    /:urlname/edit(.:format)           users#foldedit
#       search GET    /:urlname/search(.:format)         users#search
#      profile GET    /:urlname/profile(.:format)        users#profile
# profile_edit GET    /:urlname/profile/edit(.:format)   users#edit
#              POST   /:urlname/profile/edit(.:format)   users#update
#     new_page GET    /:urlname/newpage(.:format)        pages#new
#              POST   /:urlname/:pagename(.:format)      pages#create
#         view GET    /:urlname/:pagename(.:format)      pages#view
#         edit GET    /:urlname/:pagename/edit(.:format) pages#edit
#              POST   /:urlname/:pagename(.:format)      pages#update
#              GET    /:folderId/add(.:format)           nodes#create

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'

  resources :users, :only => [:create, :update]
  resources :tags, :only => [:create, :destroy]
  resources :glossaries, :only => [:create, :destroy]
  resources :nodes, :only => [:create, :destroy]
  resources :image_blocks, :only => [:create, :destroy]
  resources :text_blocks, :only => [:create, :destroy]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/signup' => 'users#new', as: 'new_user'

  get '/:urlname' => 'users#folders', as: 'folder'
  get '/:urlname/edit' => 'users#foldedit', as: 'folder_edit'

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
