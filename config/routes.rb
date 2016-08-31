Rails.application.routes.draw do
  resources :registrations, only: [:new, :create, :show], param: :token do
    get 'pdf', on: :member
  end
  root to: "registrations#new"
end
