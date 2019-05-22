Rails.application.routes.draw do
  root :to => 'index'
  resources :cocktails, only: %i[index show new create destroy] do
    resources :doses, only: %i[create new]
  end
  resources :doses, only: :destroy
end
