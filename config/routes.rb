Hightechcross::Application.routes.draw do
  devise_for :admins
  devise_for :participants

  namespace :admin do
    resources :crosses do
      as_routes
      end

    resources :participants do
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
