IJURY::Application.routes.draw do

root to: 'pages#main'

  resources :cases do
    resources :comments do
      resources :votes
    end
  end

end
