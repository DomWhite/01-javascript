Rails.application.routes.draw do

  resources :dishes, :users, :tags  #, :except => [:destroy, :show, :index]


    #route   # controller#action (method, which is defined in controllers)
  get '/' => 'dishes#index', :as => :root 
  get '/about' => 'pages#about'

#/session/new - login form
  get '/login' => 'session#new'

#/session - after submit form for login
  post '/login' => 'session#create'

#/session - logout
  delete '/logout' => 'session#destroy'

#all these are taken care of by resources :dishes
  # get show form
  # get '/dishes/new' => 'dishes#new'
  # # post form - create
  # post '/dishes' => 'dishes#create'


  # # delete destroy
  # delete '/dishes/:id/delete' => 'dishes#destroy'


  # # get show edit form
  # get '/dishes/:id/edit/' => 'dishes#edit'
  # #put form - update
  # put '/dishes/:id' => 'dishes#update'


  # # get show single dish
  # get '/dishes' => 'dishes#index'

  # get list all dish


end