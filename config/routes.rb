Rails.application.routes.draw do


  devise_for :users
  resources :artists do
    resources :arts
  end
  resources :musicians do
    resources :musics
  end
  resources :collabs

end
