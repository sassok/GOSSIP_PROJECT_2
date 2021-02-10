Rails.application.routes.draw do
  resources :gossips, only: [:new, :create]
  get 'user/:id', to: 'user#show'
  get 'gossips/:id', to: 'gossips#show'
  get '/home/', to: 'home#home'
  get 'welcome/:name', to: 'welcome#show'
  get 'static_pages/contact', to: 'static_pages#contact'
  get 'static_pages/team', to: 'static_pages#team'
  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
