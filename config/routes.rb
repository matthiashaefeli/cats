Rails.application.routes.draw do

  devise_for :users
  resources :cats
  resources :messages

	get '/user/:id', to: 'welcome#usershow', as: 'usershow'
	post '/userupdate/:id', to: 'welcome#userupdate', as: 'userupdate'
	root "welcome#index"

end
