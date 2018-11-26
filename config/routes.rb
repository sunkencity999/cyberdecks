Rails.application.routes.draw do
 
  resources :topics do

  	resources :posts, except: [:index]
  end
  
  resources :posts, only: [] do
	  resources :comments, only: [:create, :destroy]
  end

  resources :users, only: [:new, :create, :show]

  resources :sessions, only: [:new, :create, :destroy]


  
  get 'blog' => 'welcome#blog'
  get 'contact' => 'welcome#contact'

  root 'welcome#index'

end
