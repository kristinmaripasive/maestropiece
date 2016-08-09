Rails.application.routes.draw do

  resources :artists do
    resources :arts
  end
  resources :musicians
  resources :collabs

end
