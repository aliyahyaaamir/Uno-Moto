UnoMoto::Application.routes.draw do

get '/sessions/destroy'


root :to => "landing#index"

resources :sessions

resources :users

resources :rental_items

end
