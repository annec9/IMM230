Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'greetings#homepage'

  get '/throw' => 'games#make_a_move'
  post '/throw' => 'games#index'

  get '/hello' => 'greetings#hello_form'
  post '/hello' => 'greetings#index'

  resources :posts, :finalapp, :thousands

  
  
end
