Rails.application.routes.draw do
  resources :flow_types

  resources :money_flows

  match '*path' => 'static#home', via: [:get, :post]
  root 'static#home'
end
