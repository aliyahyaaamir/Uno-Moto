UnoMoto::Application.routes.draw do

root :to => "landing#index"

resources :sessions

resources :users

end
