Rails.application.routes.draw do
  # get 'registration' , to: 'auth#signup_form'
  get 'registration' , controller:'auth', action:'signup_form'
  post 'signup', to: 'auth#signup', as:'signup'
  get 'login' ,to:'auth#signin_form' 
  post 'signin' ,to: 'auth#signin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
