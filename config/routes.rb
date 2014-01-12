AppliftChallenge::Application.routes.draw do

  devise_for :users

  root 'gadgets#index'

  resources :gadgets, :only => [:index] do
    collection do
      get 'search' => 'gadgets#search'
    end
  end

end
