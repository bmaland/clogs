Clogs::Engine.routes.draw do
  root to: 'clogs#index'
  resources :clogs
end
