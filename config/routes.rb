UnoMoto::Application.routes.draw do

get '/sessions/destroy'
get '/rental-process' => 'rental-process#index', as: 'process'

resources :locations

root :to => "landing#index"

resources :sessions

resources :users

resources :rental_items do
	resources :bookings
	collection do
		get "search"
	end
end

namespace :rental_items do
	resources :places
	resources :tags
end


namespace :my do
	resources :rental_items
	resources :rents, :only => [:index]
end

resources :tags

end
