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
  root 'articles#index'
  resources :admins

  resources :users
  # resources :admins

  resources :genres, only: [:index, :show, :create]
  resources :regions, only: [:index, :show, :create]

  get "/articles/list" => "articles#list"
  get "/users/seach" => "users#search"
  get "/admins/link" => "admins#link"
  # get "/newses/search_index" => "newses#index"


  resources :articles, only: [:new, :create, :show] do
      resource :favorites, only: [:create, :destroy]
      resource :article_comments, only: [:create, :destroy]
end

end
