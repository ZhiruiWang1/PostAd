Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # Main page that opens is root
  root 'posts#index', as: 'home' # as 'home' is needed as its defined in \app\views\layouts\application.html.erb

  get'about' => 'pages#about', as: 'about'

  # Resources creates seven different routes in this application, all mapping to the Posts controller
  # They are the index, new, create, show, edit, update and destroy actions
  resources :posts do
    # This resources maps to Comments controller
    resources :comments
  end

end
