Rails.application.routes.draw do

  get 'plans/index'

  root 'homes#index'

  namespace :admins do
    get 'dashboards/index'
  end

	devise_for :admins, controllers: { 
					registrations: "admins/registrations",
		  		sessions: "admins/sessions" 
		  	}

	devise_for :users, controllers: { registrations: "users/registrations",
		  		sessions: "users/sessions",
				omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :plans, except: [:new, :create, :destroy]

	namespace :admins do
		get '/', to: 'dashboards#index', as: ''
		resources :menus
    resources :plans, except: [:new, :create, :destroy] 
	end

  get '/admins/plan_meal/:plan_meal_id/menu/:menu_id' => 'admins/meal_menus#create', :as => 'create_meal_menu'
  get '/admins/pm/:plan_meal_id/m/:menu_id' => 'admins/meal_menus#destroy', :as => 'delete_meal_menu'

end
