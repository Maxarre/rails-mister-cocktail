Rails.application.routes.draw do
  resources :cocktails, only: %i[index show new create destroy] do
    resources :doses, only: %i[create new]
  end
  resources :doses, only: :destroy
end
