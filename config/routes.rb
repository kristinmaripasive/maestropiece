Rails.application.routes.draw do

  root to: "main#index"
    resources :main, only: [:index, :show]

  devise_for :users
  resources :artists do
    resources :arts
  end
  resources :musicians do
    resources :musics
  end
  resources :collabs

end
