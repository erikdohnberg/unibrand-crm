UnibrandCrm::Application.routes.draw do
  
	root :to => 'home#index'

	namespace :admin do
		resources :bookings
	end

	resources :bookings

	resource :session, :only => [:new, :create, :destroy]

end
