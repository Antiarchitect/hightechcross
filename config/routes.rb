Hightechcross::Application.routes.draw do

  root :to => 'results#index'

  devise_for :admins
  devise_for :teams

  namespace :admin do
    root :to => 'admin#crosses'

    resources :crosses do
      as_routes
    end

    resources :participations do
      as_routes
    end

    resources :tasks do
      as_routes
    end

    resources :teams do
      as_routes
    end
  end
end
