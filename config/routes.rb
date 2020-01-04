# == Route Map
#
#                      Prefix Verb   URI Pattern                                                                              Controller#Action
#                       items GET    /items(.:format)                                                                         items#index
#                             POST   /items(.:format)                                                                         items#create
#                    new_item GET    /items/new(.:format)                                                                     items#new
#                   edit_item GET    /items/:id/edit(.:format)                                                                items#edit
#                        item GET    /items/:id(.:format)                                                                     items#show
#                             PATCH  /items/:id(.:format)                                                                     items#update
#                             PUT    /items/:id(.:format)                                                                     items#update
#                             DELETE /items/:id(.:format)                                                                     items#destroy
#         new_v1_user_session GET    /v1/auth/sign_in(.:format)                                                               devise_token_auth/sessions#new {:format=>:json}
#             v1_user_session POST   /v1/auth/sign_in(.:format)                                                               devise_token_auth/sessions#create {:format=>:json}
#     destroy_v1_user_session DELETE /v1/auth/sign_out(.:format)                                                              devise_token_auth/sessions#destroy {:format=>:json}
#        new_v1_user_password GET    /v1/auth/password/new(.:format)                                                          devise_token_auth/passwords#new {:format=>:json}
#       edit_v1_user_password GET    /v1/auth/password/edit(.:format)                                                         devise_token_auth/passwords#edit {:format=>:json}
#            v1_user_password PATCH  /v1/auth/password(.:format)                                                              devise_token_auth/passwords#update {:format=>:json}
#                             PUT    /v1/auth/password(.:format)                                                              devise_token_auth/passwords#update {:format=>:json}
#                             POST   /v1/auth/password(.:format)                                                              devise_token_auth/passwords#create {:format=>:json}
# cancel_v1_user_registration GET    /v1/auth/cancel(.:format)                                                                devise_token_auth/registrations#cancel {:format=>:json}
#    new_v1_user_registration GET    /v1/auth/sign_up(.:format)                                                               devise_token_auth/registrations#new {:format=>:json}
#   edit_v1_user_registration GET    /v1/auth/edit(.:format)                                                                  devise_token_auth/registrations#edit {:format=>:json}
#        v1_user_registration PATCH  /v1/auth(.:format)                                                                       devise_token_auth/registrations#update {:format=>:json}
#                             PUT    /v1/auth(.:format)                                                                       devise_token_auth/registrations#update {:format=>:json}
#                             DELETE /v1/auth(.:format)                                                                       devise_token_auth/registrations#destroy {:format=>:json}
#                             POST   /v1/auth(.:format)                                                                       devise_token_auth/registrations#create {:format=>:json}
#      v1_auth_validate_token GET    /v1/auth/validate_token(.:format)                                                        devise_token_auth/token_validations#validate_token
#                   v1_orders GET    /v1/orders(.:format)                                                                     api/v1/orders#index {:format=>:json}
#                             POST   /v1/orders(.:format)                                                                     api/v1/orders#create {:format=>:json}
#                new_v1_order GET    /v1/orders/new(.:format)                                                                 api/v1/orders#new {:format=>:json}
#               edit_v1_order GET    /v1/orders/:id/edit(.:format)                                                            api/v1/orders#edit {:format=>:json}
#                    v1_order GET    /v1/orders/:id(.:format)                                                                 api/v1/orders#show {:format=>:json}
#                             PATCH  /v1/orders/:id(.:format)                                                                 api/v1/orders#update {:format=>:json}
#                             PUT    /v1/orders/:id(.:format)                                                                 api/v1/orders#update {:format=>:json}
#                             DELETE /v1/orders/:id(.:format)                                                                 api/v1/orders#destroy {:format=>:json}
#                v1_addresses GET    /v1/addresses(.:format)                                                                  api/v1/addresses#index {:format=>:json}
#                             POST   /v1/addresses(.:format)                                                                  api/v1/addresses#create {:format=>:json}
#              new_v1_address GET    /v1/addresses/new(.:format)                                                              api/v1/addresses#new {:format=>:json}
#             edit_v1_address GET    /v1/addresses/:id/edit(.:format)                                                         api/v1/addresses#edit {:format=>:json}
#                  v1_address GET    /v1/addresses/:id(.:format)                                                              api/v1/addresses#show {:format=>:json}
#                             PATCH  /v1/addresses/:id(.:format)                                                              api/v1/addresses#update {:format=>:json}
#                             PUT    /v1/addresses/:id(.:format)                                                              api/v1/addresses#update {:format=>:json}
#                             DELETE /v1/addresses/:id(.:format)                                                              api/v1/addresses#destroy {:format=>:json}
#                    v1_menus GET    /v1/menus(.:format)                                                                      api/v1/menus#index {:format=>:json}
#                             POST   /v1/menus(.:format)                                                                      api/v1/menus#create {:format=>:json}
#                 new_v1_menu GET    /v1/menus/new(.:format)                                                                  api/v1/menus#new {:format=>:json}
#                edit_v1_menu GET    /v1/menus/:id/edit(.:format)                                                             api/v1/menus#edit {:format=>:json}
#                     v1_menu GET    /v1/menus/:id(.:format)                                                                  api/v1/menus#show {:format=>:json}
#                             PATCH  /v1/menus/:id(.:format)                                                                  api/v1/menus#update {:format=>:json}
#                             PUT    /v1/menus/:id(.:format)                                                                  api/v1/menus#update {:format=>:json}
#                             DELETE /v1/menus/:id(.:format)                                                                  api/v1/menus#destroy {:format=>:json}
#          rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
#   rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#          rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
#   update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#        rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  root 'home#index'
  scope module: :api, defaults: {format: :json} do
    namespace :v1 do
      devise_for :users, defaults: {format: :json}, controllers: {
        registrations: 'api/v1/users/registrations',
        sessions: 'api/v1/users/sessions'
      }

      post 'social_login' => 'users/auth#social_login'
      
      resources :orders do
      end
      resources :addresses
      resources :menus do
        collection do
          get :weekly_menu
          get :menu_categories
        end
      end
      resources :items
      resources :plans
      get 'payment/initiate_payment'
      post 'payment/buy_plan'
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
