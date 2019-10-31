Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :books do
    collection do
      get :search
    end
  end

  resources :articles do
    resources :comments
  end
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
