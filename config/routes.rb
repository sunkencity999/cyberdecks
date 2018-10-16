Rails.application.routes.draw do
 
  resources :topics
  resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'blog' => 'welcome#blog'
  get 'builds' => 'welcome#builds'
  get 'contact' => 'welcome#contact'

  root 'welcome#index'

end
