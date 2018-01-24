Rails.application.routes.draw do

  devise_for :users
  resources :cats
	root "welcome#index"

end
