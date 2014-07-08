require 'api_constraints'

Rails.application.routes.draw do

  
  resources :photos

  resources :stores


  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do      
      resources :sectors
      resources :retailers
      resources :brand_owners
      resources :brands
      resources :stores
      resources :audits
    end
  end

  namespace :admin do

    get 'admin/dashboard'


    resources :settings
    resources :users
    resources :roles
    resources :retailers
    resources :sectors
    resources :brand_owners
    resources :brands
    resources :countries
    resources :channels
    resources :store_formats
    resources :environment_types
    resources :audits
  end


  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  # for locale

  # scope ':locale', locale: /#{I18n.available_locales.join("|")}/ do
  #   resources :subscribers
    root 'main#index'
  # end

  # match '*path', to: redirect{|params| "/#{I18n.default_locale}/#{params[:path]}"}, via: :all
  # match '', to: redirect("/#{I18n.default_locale}"), via: :get

end
