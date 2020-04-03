Rails.application.routes.draw do
  root to: 'web/home#index'

  namespace :web do
    get 'products/index'
  end

  namespace :web do
    get 'products/new'
  end

  namespace :web do
    get 'products/edit'
  end

  # namespace :web do
  #   get 'orders/index'
  # end

  # namespace :web do
  #   get 'orders/show'
  # end

  # namespace :web do
  #   get 'orders/new'
  # end

  # namespace :web do
  #   get 'carts/show'
  # end

  devise_for :users, :controllers => {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_for :customers, :controllers => {
    sessions: 'web/customers/sessions',
    registrations: 'web/customers/registrations'
  }

  namespace :admin do
    root to: 'admin#admin_index#index'
    # index admin
    get 'index', to: '/admin/admin_index#index', as: 'admin_index'
    # product
    resources :product_cats, only: [:index, :new, :create, :edit, :update, :show ,:destroy]
    resources :product_details, only: [:new, :create, :destroy, :edit, :update]
    resources :product_images, only: [:new, :create, :edit, :update, :destroy]
    resources :customers, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :line_items, only: [:index, :show ]

  end

  namespace :web do
    resources :product_cats, only: [:show]
    resources :product_details, only: [:show]
    resources :orders
    resources :products

    get 'carts/:id' => "carts#show", as: "cart"
    delete 'carts/:id' => "carts#destroy"

    post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
    post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
    post 'line_items' => "line_items#create"
    get 'line_items/:id' => "line_items#show", as: "line_item"
    delete 'line_items/:id' => "line_items#destroy"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
