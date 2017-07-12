Rails.application.routes.draw do

  root 'portfolios#index'
  scope do
    resources :portfolios, path: 'portfolio'
    resources :interests, path: 'research'
    resources :resumes, path: 'cv'
  end



  # static pages routes
  get 'about' => 'static_pages#about'
  get 'home' => 'static_pages#home'
  get 'freelance' => 'static_pages#freelance'
  get 'shop' => 'static_pages#shop'
  get 'login' => 'devise/sessions#new'
  get 'logout' => 'devise/sessions#destroy'

end
