Rails.application.routes.draw do
  
  # 会員用
  devise_for :users,skip: [:passwords], controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
}

  scope module: :user do
    root to: "homes#top"
    resources :users, only: [:show, :edit, :create, :update]
    patch 'users/withdrawal', to: 'users#withdrawal', as: 'withdrawal'
    resources :animations, only: [:index, :show]
    resources :reviews, only: [:index, :new, :show, :create, :update, :destroy]
    resources :genres, only: [:index, :create]
  end
  

  # 管理者用
  devise_for :admins, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  namespace :admin do
    root to: "homes#top"
    resources :users, only: [:index, :show, :edit, :update, :destroy]
    resources :animations, only: [:index, :new, :show, :edit, :create, :update, :destroy]
    resources :reviews, only: [:index, :destroy]
    resources :genres, only: [:index, :edit, :create, :update, :destroy]
  end
  
  
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
