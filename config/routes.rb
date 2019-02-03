Rails.application.routes.draw do
  root to: "tweets#index"
  devise_for :users, controllers: {registrations: "registrations"}
  resources :tweets do
    member do
      put "like", to: "tweets#like"
      put "unlike", to: "tweets#unlike"
    end
  end


  resources :users do
    member do
      get :follow
      get :unfollow
    end
  end

end
