Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root   'blogs#index'
  get    'blogs' => 'blogs#index'
  get    'blogs/new' => 'blogs#new'
  post   'blogs' => 'blogs#create'
  delete 'blogs/:id'  => 'blogs#destroy'
  patch  'blogs/:id'  => 'blogs#update'
  get    'blogs/:id/edit' => 'blogs#edit'
  get    'users/:id'   =>  'users#show'

end
