Rails.application.routes.draw do
  root "posts#index"
  resources :posts do
    resources :posts, except: :index
    collection do
      get 'search'
    end
  end
  devise_for :users
end
