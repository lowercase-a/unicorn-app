Rails.application.routes.draw do
  resources :friends
  resources :unicorns
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
end
