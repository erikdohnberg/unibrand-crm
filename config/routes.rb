UnibrandCrm::Application.routes.draw do
  
  root :to => 'booking#index'

  namespace :admin do
    resources :booking
  end

  namespace :user do
    resources :booking
  end

  resource :session, :only => [:new, :create, :destroy]

end
