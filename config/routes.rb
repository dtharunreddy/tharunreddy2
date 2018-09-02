Rails.application.routes.draw do
 
  # get 'welcome/index'
  get 'welcome/index'
  root 'welcome#index'
  resources :laptops do 
    member do
      put 'update_first_record'
    end

    collection do
      get 'first_30_records'
      get 'ajax_demo'
    end  
  end  


  resources :computers do
    member do
      put 'update_first_record'
    end

    collection do
      get 'first_30_records'
    end  
  end  
  resources :venkats
  resources :cars
  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/create'
  get 'categories/edit'
  get 'categories/update'
  get 'categories/destroy'
  get 'products/index'
  get 'products/show'
  get 'products/new'
  get 'products/create'
  get 'products/edit'
  get 'products/update'
  get 'products/destroy'
  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books/create'
  get 'books/edit'
  get 'books/update'
  get 'books/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'

  resources :users
  resources :books
  resources :products
  resources :categories
  resources :movies
   resources :keywords
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
