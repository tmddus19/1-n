Rails.application.routes.draw do
  # get '/' => 'posts#index'
  root 'posts#index'
  
  get 'posts/index'

  get 'posts/new'

  get 'posts/create'

  get 'posts/show/:id' => 'posts#show'
  
  get 'posts/:id/comment' => 'posts#comment'

end


