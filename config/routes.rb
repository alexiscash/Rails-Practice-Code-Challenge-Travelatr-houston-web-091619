Rails.application.routes.draw do
  resources :bloggers, :destinations, :posts
  post 'posts/:id/like', to: 'posts#like'
end
