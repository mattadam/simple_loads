Rails.application.routes.draw do
  root 'site/home#index'

  resources :loads do
    get :dispatch, controller: 'loads/dispatch', action: :edit
    patch :dispatch, controller: 'loads/dispatch', action: :update
  end
end
