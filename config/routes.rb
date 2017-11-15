Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/platforms' => 'platforms#index'
  get '/games' => 'games#index'
  get '/mechs' => 'gears#index'
  get '/characters' => 'characters#index'
  get '/about' => 'pages#about'

  resources :platforms, :games, :gears, :characters

end
