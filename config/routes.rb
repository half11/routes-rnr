Rails.application.routes.draw do

  namespace :admin do
    get 'dashboard/main'
    get 'dashboard/user'
    get 'dashboard/blog'
  end

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'leadgen/advert', to: 'pages#contact', as: 'lead'

  resources :blogs
  resources :posts

  get 'query/:somestuff/:onemore', to: 'posts#somessstuff'

  get 'posts/*missing', to: 'posts#missing' #ruta default para errores - TIENE QUE IR AL ULTIMO!! no permite llegar a rutas que este debajo de esta

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
