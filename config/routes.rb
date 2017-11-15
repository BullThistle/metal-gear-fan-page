Rails.application.routes.draw do
  root :to => 'platforms#index'

  resources :platforms
end
