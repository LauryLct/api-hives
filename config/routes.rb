# frozen_string_literal: true

# app/config/routes.rb
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :hives, only: %i[index show create]
    end
  end

  root to: 'api/v1/hives#index'

end
