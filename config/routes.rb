require 'api_constraints'

Rails.application.routes.draw do

  namespace :admin do
  get 'admin/dashboard'
  end

  namespace :admin do
    resources :roles
  end

  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do      
      resources :sectors
      resources :retailers
      resources :brand_owners
      resources :brands
    end
  end

  namespace :admin do
    resources :settings
    resources :users
    resources :retailers
    resources :sectors
    resources :brand_owners
    resources :brands
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
