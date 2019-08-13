Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  # devise_for :admins, controllers: {
  #   sessions: 'admins/sessions',
  #   passwords: 'admins/passwors',
  #   registrations: 'admins/registrations'
  # }
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions',
  #   passwords: 'users/sessions',
  #   registrations: 'users/registrations'
  # }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  # resources :admins
  root 'newses#index'
  resources :newses
  resources :genres, only: [:index, :show, :create]
  resources :regions, only: [:index, :show, :create]

  get "/users/seach" => "users#search"
  get "/admins/link" => "admins#link"
  get "/admins/news_edit" => "admins#edit"
  get "/admins/news_index" => "admins#index"
  get "/newses/search_index" => "newses#index"

  resources :newses, only: [:new, :create, :index, :show] do
    resource :news_comments, only: [:create, :destroy]
end

  resources :newses, only: [:new, :create, :index, :show] do
      resource :favorites, only: [:create, :destroy]
      resource :news_comments, only: [:create, :destroy]
end

end
