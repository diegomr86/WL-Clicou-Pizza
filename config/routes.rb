require 'domain_constraint'

WLClicouPizza::Application.routes.draw do

  resources :sites
  resources :site, only: :index
  resources :about_us, only: :index
  resources :regions, only: :index
  resources :menu, only: :index
  resources :contact_us, only: [:index, :create]

  constraints(DomainConstraint) do
    match '/' => 'site#index'
  end

  root :to => "sites#index"
end
