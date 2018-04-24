Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "products#index"

  resources :products do
    resources :reviews, only: [:create, :edit, :destroy, :new, :update]
  end

  resource :user, only:[:new, :create]
  resource :session, only:[:new, :create, :destroy]

end
