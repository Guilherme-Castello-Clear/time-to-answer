Rails.application.routes.draw do
  namespace :admins_backoffice do
  end
  namespace :site do
    get 'welcome/index'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index' #Dashboard
<<<<<<< HEAD
    resources :admins, except: [:delete]
=======
    resources :admins, only: [:index, :edit, :update]
>>>>>>> f686038097ba1629b3b4ed3836725c5338785fb8

  end
  devise_for :admins
  devise_for :users

  get 'inicio', to: 'site/welcome#index'
  root to: 'site/welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
