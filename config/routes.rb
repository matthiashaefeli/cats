Rails.application.routes.draw do

  devise_for :users
  resources :cats

	get '/user/:id', to: 'welcome#usershow', as: 'usershow'
	root "welcome#index"

end
