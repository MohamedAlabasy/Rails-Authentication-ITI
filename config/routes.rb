Rails.application.routes.draw do
  # get 'registration' , to: 'auth#signup_form'
  get 'registration' , controller:'auth', action:'signup_form' ,as:'registration'
  post 'signup', to: 'auth#signup', as:'signup'
  get 'login' ,to:'auth#signin_form' ,as:'login'
  post 'signin' ,to: 'auth#signin' ,as:'signin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '/', to:'posts#index'
  root 'posts#index'
end
