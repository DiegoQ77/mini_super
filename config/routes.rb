Rails.application.routes.draw do
  
  resources :providers 

  resources :products do
    collection do 
      get :list
    end
  end
  devise_for :users
  devise_scope :users do
    authenticated :user do
      root 'home#index', as: :home
    end
    unauthenticated do
      root :to => redirect("/users/sign_in")
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
