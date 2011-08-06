Hightechcross::Application.routes.draw do
  namespace :admin do
    resources :crosses do
      as_routes
    end
  end
end
