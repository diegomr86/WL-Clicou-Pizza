require 'domain_constraint'

WLClicouPizza::Application.routes.draw do
  resources :sites

  constraints(DomainConstraint) do
    match '/' => 'sites#show'
  end

  root :to => "sites#index"
end
