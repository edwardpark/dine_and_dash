Rails.application.routes.draw do

   root 'welcome#index'

   constraints subdomain: 'api' do #note subdomain api might cause trouble in deployment
     namespace :api do
       resources :movies, only: [:index,:show]
     end
   end

end
