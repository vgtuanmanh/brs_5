Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}

  root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'

  resources :users
  namespace :admin do
    root 'users#index'

    resources :users
  end
end
