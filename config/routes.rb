Rails.application.routes.draw do
  get 'blogs/new' => 'blogs#new'
  get 'blogs' => 'blogs#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  post '/blogs' => 'blogs#create'


get '/blogs/:id' => 'blogs#show'
    # /posts/1 や /posts/3 に該当する
end