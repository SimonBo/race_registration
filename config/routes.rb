Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :registrations, only: [:new, :create, :show], param: :token do
    get 'pdf', on: :member
  end
  root to: "registrations#new"
end
