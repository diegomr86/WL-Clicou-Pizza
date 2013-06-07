require 'domain_constraint'

WLClicouPizza::Application.routes.draw do

  resources :sites
  resources :about_us, only: :index
  resources :regions, only: :index
  resources :contact, only: :index
  resources :menu, only: :index

  constraints(DomainConstraint) do
    match '/' => 'sites#show'
  end

  root :to => "sites#index"
end
