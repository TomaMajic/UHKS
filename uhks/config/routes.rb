Rails.application.routes.draw do

  get 'licence/index'

  get 'licence/show'

  get 'licence/new'

  post 'licence/create'

  get 'licence/edit'

  get 'licence/update'

  get 'licence/destroy'

  get 'absence/index'

  get 'absence/show'

  get 'absence/new'

  post 'absence/create'

  get 'absence/edit'

  get 'absence/update'

  get 'absence/destroy'

  get 'city/index'

  get 'city/show'

  get 'city/new'

  post 'city/create'

  get 'city/edit'

  get 'city/update'

  get 'city/destroy'

  get 'team/index'

  get 'team/show'

  get 'team/new'

  post 'team/create'

  get 'team/edit'

  get 'team/update'

  get 'team/destroy'

  get 'user/index'

  get 'user/show'

  get 'user/new'

  post 'user/create'

  get 'user/edit'

  get 'user/update'

  get 'user/destroy'

  get 'game/index'

  get 'game/show'

  get 'game/new'

  post 'game/create'

  get 'game/edit'

  get 'game/update'

  get 'game/destroy'

  get 'home/index'

  devise_for :users
	root to: "home#index"

  get 'game/show-refs-for-game' => 'game#show_refs_for_game', as: 'show_refs_for_game'
  get 'game/add-new-ref' => 'game#add_new_ref', as: 'add_new_ref'
  get 'game/remove-ref' => 'game#remove_ref', as: 'remove_ref'
  get 'game/edit-ref' => 'game#edit_ref', as: 'edit_ref'
  get 'game/delete-game' => 'game#delete_game', as: 'delete_game'
end
