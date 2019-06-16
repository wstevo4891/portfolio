Rails.application.routes.draw do
  root 'home#index'
  
  devise_for :admin_users, controllers: { sessions: "admin_users/sessions" }

  get '/admin' => 'admin#index'

  namespace :admin do
    resources :projects
    resources :posts
    resources :exhibits
  end

  get '/exhibits' => 'exhibits#index'
  get '/exhibits/:slug' => 'exhibits#show'

  get '/pages/:page' => 'pages#show'

  get '/work' => 'projects#index'
  get '/work/:slug' => 'projects#show'

  get '/about' => 'about#index'

  get '/blog' => 'posts#index'
  get '/blog/:slug' => 'posts#show'

  get '/contact' => 'contact#index'

  # get '/work' => 'pages#work'
  # get '/about' => 'pages#about'
  # get 'pages/blog'
  # get '/contact' => 'pages#contact'
  # get '/dashboard' => 'pages#dashboard'

  # get 'work/bolt_network' => 'pages#bolt_network'
  # get 'work/baldwin' => 'pages#baldwin'
  # get 'work/griffen' => 'pages#griffen'
  # get 'work/smm' => 'pages#smm'
  # get 'work/suggestion_box' => 'pages#suggestion_box'
end
