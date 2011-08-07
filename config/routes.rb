Hightechcross::Application.routes.draw do

  root :to => 'results#index'

  devise_for :admins
  devise_for :teams

  namespace :admin do
    root :to => 'crosses#index'

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

  namespace :team do
    root :to => 'dashboard#index'
    resources :guesses, :only => [:create]
    resources :dashboard, :only => [:index]
    resources :hints, :only => [:show]
  end
end
