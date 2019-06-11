Rails.application.routes.draw do
  resources :projects
  root 'home#index'
  
  devise_for :admins, 
             controllers: { sessions: "admins/sessions" }

  resources :blog_images
  resources :blog_posts

  get '/work' => 'pages#work'
  get '/about' => 'pages#about'
  get 'pages/blog'
  get '/contact' => 'pages#contact'
  get '/dashboard' => 'pages#dashboard'

  get 'work/bolt_network' => 'pages#bolt_network'
  get 'work/baldwin' => 'pages#baldwin'
  get 'work/griffen' => 'pages#griffen'
  get 'work/smm' => 'pages#smm'
  get 'work/suggestion_box' => 'pages#suggestion_box'
end
