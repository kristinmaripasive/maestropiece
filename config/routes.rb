Rails.application.routes.draw do


  resources :artists do
    resources :arts
  end
  resources :musicians do
    resources :musics
  end
  resources :collabs

end
