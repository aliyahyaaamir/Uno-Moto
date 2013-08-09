UnoMoto::Application.routes.draw do

get '/sessions/destroy'

resources :locations

root :to => "landing#index"

resources :sessions

resources :users

resources :rental_items do
	resources :bookings
end

namespace :rental_items do
	resources :places
	resources :tags
end


namespace :my do
	resources :rental_items
end

resources :tags

end
