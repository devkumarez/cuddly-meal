# == Route Map
#
#                      Prefix Verb   URI Pattern                                                                              Controller#Action
#                        root GET    /                                                                                        home#index
#         new_v1_user_session GET    /v1/users/sign_in(.:format)                                                              api/v1/users/sessions#new {:format=>:json}
#             v1_user_session POST   /v1/users/sign_in(.:format)                                                              api/v1/users/sessions#create {:format=>:json}
#     destroy_v1_user_session DELETE /v1/users/sign_out(.:format)                                                             api/v1/users/sessions#destroy {:format=>:json}
#        new_v1_user_password GET    /v1/users/password/new(.:format)                                                         api/v1/passwords#new {:format=>:json}
#       edit_v1_user_password GET    /v1/users/password/edit(.:format)                                                        api/v1/passwords#edit {:format=>:json}
#            v1_user_password PATCH  /v1/users/password(.:format)                                                             api/v1/passwords#update {:format=>:json}
#                             PUT    /v1/users/password(.:format)                                                             api/v1/passwords#update {:format=>:json}
#                             POST   /v1/users/password(.:format)                                                             api/v1/passwords#create {:format=>:json}
# cancel_v1_user_registration GET    /v1/users/cancel(.:format)                                                               api/v1/users/registrations#cancel {:format=>:json}
#    new_v1_user_registration GET    /v1/users/sign_up(.:format)                                                              api/v1/users/registrations#new {:format=>:json}
#   edit_v1_user_registration GET    /v1/users/edit(.:format)                                                                 api/v1/users/registrations#edit {:format=>:json}
#        v1_user_registration PATCH  /v1/users(.:format)                                                                      api/v1/users/registrations#update {:format=>:json}
#                             PUT    /v1/users(.:format)                                                                      api/v1/users/registrations#update {:format=>:json}
#                             DELETE /v1/users(.:format)                                                                      api/v1/users/registrations#destroy {:format=>:json}
#                             POST   /v1/users(.:format)                                                                      api/v1/users/registrations#create {:format=>:json}
#             v1_social_login POST   /v1/social_login(.:format)                                                               api/v1/users/auth#social_login {:format=>:json}
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
#        weekly_menu_v1_menus GET    /v1/menus/weekly_menu(.:format)                                                          api/v1/menus#weekly_menu {:format=>:json}
#    menu_categories_v1_menus GET    /v1/menus/menu_categories(.:format)                                                      api/v1/menus#menu_categories {:format=>:json}
#                    v1_menus GET    /v1/menus(.:format)                                                                      api/v1/menus#index {:format=>:json}
#                             POST   /v1/menus(.:format)                                                                      api/v1/menus#create {:format=>:json}
#                 new_v1_menu GET    /v1/menus/new(.:format)                                                                  api/v1/menus#new {:format=>:json}
#                edit_v1_menu GET    /v1/menus/:id/edit(.:format)                                                             api/v1/menus#edit {:format=>:json}
#                     v1_menu GET    /v1/menus/:id(.:format)                                                                  api/v1/menus#show {:format=>:json}
#                             PATCH  /v1/menus/:id(.:format)                                                                  api/v1/menus#update {:format=>:json}
#                             PUT    /v1/menus/:id(.:format)                                                                  api/v1/menus#update {:format=>:json}
#                             DELETE /v1/menus/:id(.:format)                                                                  api/v1/menus#destroy {:format=>:json}
#                    v1_items GET    /v1/items(.:format)                                                                      api/v1/items#index {:format=>:json}
#                             POST   /v1/items(.:format)                                                                      api/v1/items#create {:format=>:json}
#                 new_v1_item GET    /v1/items/new(.:format)                                                                  api/v1/items#new {:format=>:json}
#                edit_v1_item GET    /v1/items/:id/edit(.:format)                                                             api/v1/items#edit {:format=>:json}
#                     v1_item GET    /v1/items/:id(.:format)                                                                  api/v1/items#show {:format=>:json}
#                             PATCH  /v1/items/:id(.:format)                                                                  api/v1/items#update {:format=>:json}
#                             PUT    /v1/items/:id(.:format)                                                                  api/v1/items#update {:format=>:json}
#                             DELETE /v1/items/:id(.:format)                                                                  api/v1/items#destroy {:format=>:json}
#                    v1_plans GET    /v1/plans(.:format)                                                                      api/v1/plans#index {:format=>:json}
#                             POST   /v1/plans(.:format)                                                                      api/v1/plans#create {:format=>:json}
#                 new_v1_plan GET    /v1/plans/new(.:format)                                                                  api/v1/plans#new {:format=>:json}
#                edit_v1_plan GET    /v1/plans/:id/edit(.:format)                                                             api/v1/plans#edit {:format=>:json}
#                     v1_plan GET    /v1/plans/:id(.:format)                                                                  api/v1/plans#show {:format=>:json}
#                             PATCH  /v1/plans/:id(.:format)                                                                  api/v1/plans#update {:format=>:json}
#                             PUT    /v1/plans/:id(.:format)                                                                  api/v1/plans#update {:format=>:json}
#                             DELETE /v1/plans/:id(.:format)                                                                  api/v1/plans#destroy {:format=>:json}
# v1_payment_initiate_payment GET    /v1/payment/initiate_payment(.:format)                                                   api/v1/payment#initiate_payment {:format=>:json}
#         v1_payment_buy_plan POST   /v1/payment/buy_plan(.:format)                                                           api/v1/payment#buy_plan {:format=>:json}
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
