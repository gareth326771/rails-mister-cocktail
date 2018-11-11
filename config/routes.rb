Rails.application.routes.draw do
  root to: "/"
  resources :cocktails do
    resources :doses
  end
   resources :doses
end
