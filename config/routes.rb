Rails.application.routes.draw do

	get "posts/" => "posts#index"

	get "posts/:id" => "posts#show" , as: :post

	get "posts/new" => "posts#new" , as: :new_post

	get "posts/edit" => "posts#edit" , as: :edit_post

end