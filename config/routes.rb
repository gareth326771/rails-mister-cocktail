Rails.application.routes.draw do
  # root to: "cocktails#index"
  resources :cocktails do
    resources :doses
  end
   resources :doses
end
