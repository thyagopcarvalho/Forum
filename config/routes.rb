Rails.application.routes.draw do
	resorces :posts
	root 'posts#index'
end
