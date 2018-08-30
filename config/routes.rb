Rails.application.routes.draw do
  root 'pages#home'
  get 'prawn', to: 'pages#prawn'
  devise_for :users
  resources :posts do
    member do
      put "like", to: "posts#upvote"
      put "dislike", to: "posts#downvote"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
