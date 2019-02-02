Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: "registrations"}
  resources :tweets do
    member do
      put "like", to: "tweets#like"
      put "unlike", to: "tweets#unlike"
    end
  end
  root to: "tweets#index"


end
