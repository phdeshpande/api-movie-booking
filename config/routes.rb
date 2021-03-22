# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount_devise_token_auth_for 'User', at: 'auth'

  # devise_for :users, defaults: { format: :json }

  namespace :api do
    resources :movies do
      member do
        get   :screenings
      end
    end
    resources :screens
    resources :seatings
    resources :tariff_types
    resources :screenings
    resources :bookings
  end
end
