Rails.application.routes.draw do

   root 'welcome#index'


     resources :movies, only: [:index,:show]
     resources :events, only:[:create]


end
