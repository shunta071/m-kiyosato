Rails.application.routes.draw do
  get 'posts/index' => "posts#index"
  get 'posts/new' => "posts#new"
  post 'posts/create'=> "posts#create"

  get 'posts/:id'=> "posts#show"
  get "/" => "home#top"
  get 'home/top' => "home#top"
  get 'home/facility' => "home#facility"
  get 'home/price' => "home#price"
  get 'home/area' => "home#area"
  get 'home/access' => "home#access"
end
