Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root 'page#landing'
  get '/landing', to: 'page#landing', as: 'landing'

  get '/menu', to: 'page#menu', as: 'menu'

  get '/specials', to: 'page#specials', as: 'specials'
  get '/hours', to: 'page#hours', as: 'hours'
  get '/greeter', to: 'main#greeter'
  get '/cubed/:num', to: 'main#cubed'
  get '/evenly/:num1/:num2', to: 'main#evenly'
  get '/palindrome/:str', to: 'main#palindrome'
  get '/random/:num1/:num2', to: 'main#random'
  get '/madlib/:str1/:str2/:str3/:str4/:str5', to: 'main#madlib'

end
