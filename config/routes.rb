Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :index, :new, :create]
    # resources :reviews, only: [ :show, :edit, :update, :destroy ]
    collection do                       # collection => no restaurant id in URL
      get 'review', to: "restaurants#review"  # RestaurantsController#top
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
