Rails.application.routes.draw do

  root to: "main#show"
    resources :main, only: [:index, :show]

    devise_for :users, controllers: {
         sessions: 'users/sessions'
       }

  resources :artists do
    resources :arts
  end
  resources :musicians do
    resources :musics
  end
  resources :collabs

end
