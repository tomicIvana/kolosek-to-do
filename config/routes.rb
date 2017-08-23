Rails.application.routes.draw do
	resources :tasks, only: [:index, :create] do

		member do 
			post 'finish'
		end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "tasks#index"

end
