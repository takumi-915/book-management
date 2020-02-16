Rails.application.routes.draw do
  root "posts#index"
  resources :posts do
    resources :posts, except: :index
    collection do
      get 'search'
    end
  end
  post   '/like/:post_id' => 'likes#like',   as: 'like'
  delete '/like/:post_id' => 'likes#unlike', as: 'unlike'
  devise_for :users
end
