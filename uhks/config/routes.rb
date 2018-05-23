Rails.application.routes.draw do

  get 'licence/index'

  get 'licence/show'

  get 'licence/new'

  get 'licence/create'

  get 'licence/edit'

  get 'licence/update'

  get 'licence/destroy'

  get 'absence/index'

  get 'absence/show'

  get 'absence/new'

  get 'absence/create'

  get 'absence/edit'

  get 'absence/update'

  get 'absence/destroy'

  get 'city/index'

  get 'city/show'

  get 'city/new'

  get 'city/create'

  get 'city/edit'

  get 'city/update'

  get 'city/destroy'

  get 'team/index'

  get 'team/show'

  get 'team/new'

  get 'team/create'

  get 'team/edit'

  get 'team/update'

  get 'team/destroy'

  get 'user/index'

  get 'user/show'

  get 'user/new'

  get 'user/create'

  get 'user/edit'

  get 'user/update'

  get 'user/destroy'

  get 'game/index'

  get 'game/show'

  get 'game/new'

  get 'game/create'

  get 'game/edit'

  get 'game/update'

  get 'game/destroy'

  devise_for :users
	root to: "home#index"
end
