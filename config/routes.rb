Rails.application.routes.draw do
  devise_for :users

  resources :friends
  resources :unicorns
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
end
