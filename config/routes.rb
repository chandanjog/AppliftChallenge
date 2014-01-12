AppliftChallenge::Application.routes.draw do

  devise_for :users

  root 'gadgets#index'

end
