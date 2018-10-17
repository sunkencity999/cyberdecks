Rails.application.routes.draw do
 
  resources :topics do

  	resources :posts, except: [:index]
  end

  resources :users, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'blog' => 'welcome#blog'
  get 'builds' => 'welcome#builds'
  get 'contact' => 'welcome#contact'

  root 'welcome#index'

end
