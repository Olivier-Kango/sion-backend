Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  namespace :api do
    namespace :v1 do
      resources :products
      resources :orders do
        member do
          patch :mark_as_delivered
          patch :mark_as_paid
          patch :in_progress
        end
      end
      resources :stock_movements
      resources :requested_products
    end
  end
end
