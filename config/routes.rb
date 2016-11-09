Rails.application.routes.draw do
	resources :terms
	root 'terms#index'
end
