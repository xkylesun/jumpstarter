# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                 api_users GET    /api/users(.:format)                                                                     api/users#index {:format=>:json}
#                           POST   /api/users(.:format)                                                                     api/users#create {:format=>:json}
#                  api_user GET    /api/users/:id(.:format)                                                                 api/users#show {:format=>:json}
#                           PATCH  /api/users/:id(.:format)                                                                 api/users#update {:format=>:json}
#                           PUT    /api/users/:id(.:format)                                                                 api/users#update {:format=>:json}
#                           DELETE /api/users/:id(.:format)                                                                 api/users#destroy {:format=>:json}
#               api_session DELETE /api/session(.:format)                                                                   api/sessions#destroy {:format=>:json}
#                           POST   /api/session(.:format)                                                                   api/sessions#create {:format=>:json}
#              api_projects GET    /api/projects(.:format)                                                                  api/projects#index {:format=>:json}
#                           POST   /api/projects(.:format)                                                                  api/projects#create {:format=>:json}
#               api_project GET    /api/projects/:id(.:format)                                                              api/projects#show {:format=>:json}
#                           PATCH  /api/projects/:id(.:format)                                                              api/projects#update {:format=>:json}
#                           PUT    /api/projects/:id(.:format)                                                              api/projects#update {:format=>:json}
#                           DELETE /api/projects/:id(.:format)                                                              api/projects#destroy {:format=>:json}
#         api_pledge_levels POST   /api/pledge_levels(.:format)                                                             api/pledge_levels#create {:format=>:json}
#          api_pledge_level PATCH  /api/pledge_levels/:id(.:format)                                                         api/pledge_levels#update {:format=>:json}
#                           PUT    /api/pledge_levels/:id(.:format)                                                         api/pledge_levels#update {:format=>:json}
#                           DELETE /api/pledge_levels/:id(.:format)                                                         api/pledge_levels#destroy {:format=>:json}
#               api_pledges POST   /api/pledges(.:format)                                                                   api/pledges#create {:format=>:json}
#                      root GET    /                                                                                        static_pages#root
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    resources :users, except: [:new, :edit]
    resource :session, only: [:create, :destroy]

    resources :projects, defaults: {format: :json}, except: [:new, :edit]
    resources :pledge_levels, defaults: {format: :json}, only: [:create, :update, :destroy]
    resources :pledges, defaults: {format: :json}, only: [:create]

  end
  
  root to: 'static_pages#root'
end
