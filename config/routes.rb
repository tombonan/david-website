Rails.application.routes.draw do

  root 'static_pages#home'
  scope do
    resources :portfolios, path: 'portfolio'
    resources :interests, path: 'research'
    resources :resumes, path: 'cv'
    resources :backgrounds, path: 'about'
  end

  resources :resources


  # static pages routes
  get 'oldabout' => 'static_pages#about'
  get 'edit' => 'static_pages#edit'
  get 'editresources' => 'static_pages#editresources'
  get 'home' => 'static_pages#home'
  get 'freelance' => 'static_pages#freelance'
  get 'shop' => 'static_pages#shop'
  get 'login' => 'devise/sessions#new'
  get 'logout' => 'devise/sessions#destroy'

end
