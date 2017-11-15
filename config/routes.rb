Rails.application.routes.draw do
  root :to => 'platforms#home'

  resources :platforms
end
